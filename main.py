from framework import bottle
from framework.bottle import route, template, request, response, error, debug, view, redirect

from google.appengine.ext.webapp.util import run_wsgi_app
from google.appengine.ext import db

import urllib
import random
#import webbrowser 
#import os  

 
#global variables 
formobj = {} 
 
 
@route('/')
def DisplayForm():
    #message = 'Hello World'
    #>output = template('templates/home', data = message)
    
    '''
    if request.get_cookie("visited"):
        #user has been here already, this means that we can pass to it the last form obj stored
        fo = request.get_cookie("formobj")
        output = template('templates/home', formobj = fo, firsttime = "False")
    else:
        # first time that the user comes by - simply display with no parameters 
        output = template('templates/home', formobj = {'query': ""}, firsttime = "True")
    #'''
    output = template('templates/home')
    return output


@route('/search', method='POST')
def parseForm():
    global formobj
    formobj["query"]        = request.POST.get('query','').strip()
    #formobj["mode"]         = request.POST.get('mode','').strip()
    formobj["submode"]      = request.POST.get('submode','').strip()
    formobj["chosenSE"]     = request.POST.get('chosenSE','').strip()
    
    #if it's the first time you connect add the session
    #this helps in uniquely identifying the queries comming from the current user
    #to differentiate it from the other user's queries - used in creativefibo
    if request.get_cookie("visited"):
        #user has already been here - copy the sessionid stored in the cookies to the formobj
        # used in creativefibo
        formobj["sessionid"] = request.get_cookie("sessionid")
        pass
    else:
        #first time user - store a cookie with a special session id for him
        #the session id will be used to exclude his previous queries from creativefibo
        response.set_cookie("visited", "yes")
        formobj["sessionid"] = generate_session()
        response.set_cookie("sessionid", formobj["sessionid"])
        
    # register as a cookie the whole form object so that when the app redirects from "horriblehack"
    # the file home.tpl knows what things where selected and what string was in the search form
    response.set_cookie("formobj", formobj, secret="secret")
    
    
        
    # redirect to the appropriate search engine type
    searchProcedureStr = "do_"+formobj["submode"]+"()"
    eval(searchProcedureStr)
    
    #formobj["otherqueries"] = get_queries()
    #return template('templates/data', data = oq)
    
    # redirect to the appropriate template
    # unfortunately it needs to be done here instead of a subfunction because I can't make the return template() function work from anywhere else
    
    ## Launch the appropriate View -external browser tab or current window

    ## in some queries with paramenters javascript doesn't escape the chars so I need to do it from here
    #'''
    case1 = ["creativefibo", "inversepopularity", "trendysearch"]
    if formobj["submode"] in case1:
        t = template('templates/horriblehack', urlToOpen = formobj["combinedurl"], formObj = formobj)        
        # launch the view template
    return t
    #'''
    
    #very useful for debugging purposes
    #return template('templates/data', data = formobj)
 
    
@route('/otherqueries')
#@view('templates/otherqueries')
def viewOtherQueries():
    # try to visualize the whole list of queries
    oq = get_queries()
    #return "other queries will go here:", oq[0]["sessionid"]    
    #return "Other queries will go here" #references to the gloabl formobj fail - \nformobj:%s" % formobj
    return template('templates/otherqueries', otherqueries = oq)
    #print oq
 
 
    

#-------------------------------------------------------
#    MODEL - used by creativeFibo
#    = Stores in the DB the List of queries done
#-------------------------------------------------------
from google.appengine.ext import db 
 
class UserQuery(db.Model):
    '''Holds the strings of each user'''
    query = db.TextProperty()         #holds the query
    sessionid = db.StringProperty()   # used to differentiate this user's query from someone elses
    dtime = db.DateTimeProperty(auto_now_add=True)
    

def store_query(a_query, a_session):
    uq = UserQuery(query = a_query, sessionid = a_session)
    uq.put()

#returns an ordered dictionary of all queries {sessionid:"...", query:"..."}  
def get_queries():
    #retrieves the list of queries - API explanation https://developers.google.com/appengine/docs/python/datastore/queryclass
    #print "formobj['sessionid'] =", formobj['sessionid'] # this works it can be read from here as well
    oq = UserQuery.all()
    oq.order('-dtime')
    #oq.filter("sessionid !=", formobj['sessionid'])#.order("dtime") # can't filter inequality and order http://stackoverflow.com/questions/2671587/appengine-filter-inequality-and-ordering-fails
    oqr = []
    for q in oq:
        #since I can't order a filtered inequality I could filter it in this loop 
        #if q.sessionid != formobj['sessionid']:
        oqr.append({"sessionid":q.sessionid, "query":q.query, "dtime":q.dtime}) 
    return oqr
    



#-------------------------------------------------------
#    CONTROLLERS 
#    = Procedures for the different search engine types
#-------------------------------------------------------

## INNOVATING SEARCH EXPERIENCE AND PROCESS
def do_creativefibo():
    '''1 - retrieves all queries ever made on the innoSearch s.engine by anybody 
       2 - chooses the first one that hasn't been requested by the current user/browser
       3 - enhances your query by remixing it to someone elses past query
       it's called creative fibo in homage to the Italian Mathematician Fibonacci, since it remixes your query with (q-1) query :)
     '''
    #formobj["query"] = "changed in do_creativefibo" #this works - formobj is a global object
    #record it to the db
    store_query(formobj["query"], formobj["sessionid"]) # WORKS
    #retieve all other queries, including the current users
    otherqueries = get_queries()
    
    #avoid the current user's queries, and pick the first that is of somebody else
    # ACHTUNG - since implementing the horrible hack the session ID changes every time the browser reopens the page
    # this looses both the query made and the session ID created
    # fortunately we store all this information in a cookie
    for q in otherqueries:
        if q["sessionid"] != formobj["sessionid"]:
            queryenhancer = q["query"]
            break
    formobj["queryenhancer"] = queryenhancer
    # launch google or other search engine looking for the new composited query
    # current query + sombody elses query
    launch_websearch(formobj["query"] +" "+ queryenhancer, formobj["chosenSE"])



## INNOVATING SEARCH EXPERIENCE AND PROCESS
def do_trendysearch():
    '''will fetch the top 20 google trends of the day, choose one and remix it with the user's query'''
    gTrendsUrl = "http://www.google.com/trends/hottrends?sa=X"
    gtPage = get_page(gTrendsUrl)
    ## choose at random between 1 and 20 the trend to remix
    randn = str(random.randint(1,20))
    #find the google trend number = randn
    gtIndx1 = gtPage.find("class=num>"+randn+".</td>")
    gtIndx2 = gtIndx1 + gtPage[gtIndx1:].find("sa=X") + 6
    gtIndx3 = gtIndx2 + gtPage[gtIndx2:].find("</a>")
    gtTrend = gtPage[gtIndx2: gtIndx3]
    # prepare the query
    launch_websearch(formobj["query"] +" "+ gtTrend, formobj["chosenSE"])


## INNOVATING THE RANKING PROCESS
def do_inversepopularity():
    '''retrieves the last page in the google rank for the user's query'''
    params = urllib.urlencode({'q': formobj["query"], 'start': 990, 'filter':0})
    urlToOpen = "https://www.google.com/search?"+params
    formobj["combinedurl"] = urlToOpen
    # the main function will launch the template and the search
    # return redirect(urlToOpen) # it works but loads the search engine in the current page
    


  
def do_distantremixer():
    print "do_distantremixer - COMING SOON - formobj:", formobj
    


 
   
    



# launches the search on one of the given search engines (google or duckduckgo) with the given query
def launch_websearch(query, searchengine):#(q, searchengine = formobj["chosenSE"]):
    print "launch_websearch q:"+ query + "\t - searchengine:" + searchengine
    # search engines urls
    se_google  = "http://www.google.com/search?"
    se_dduckgo = "http://duckduckgo.com/?"        # in duckduckgo to obtain a dictionary of the reply just append at the end of the url &format=json
    #'''
    param = urllib.urlencode({'q': query})
    urlToOpen = eval(searchengine) + param
    # since the template cannot be launched from a sub function store the combined url in the global formobj
    # the appropriate template will be launched in DisplayForm
    formobj["combinedurl"] = urlToOpen
    # uses bottle to open in the current browser page the external search engine url with the formed query
    # return redirect(urlToOpen) # it works but loads the search engine in the current page
    #webbrowser.open(urlToOpen,2) #2 = open in new tab # doesn't work because the webbrowser module uses the os module which is restricted in Google App Engine
    #return template('templates/horriblehack', urlToOpen = urlToOpen) # - doesn't launch...only if called by a route
    
    


#-------------------------------------------------------
#        UTILITY FUNCTIONS
#-------------------------------------------------------

## RETRIEVES THE PAGE
def get_page(seedpage):
    try:
        pageSocket = urllib.urlopen(seedpage)
        return pageSocket.read()
    except:
        return ""


# generates a session id for the user
# there are 52 elements so it generates 52**n configurations (52^5 = 380.000.000 different combinations - should be enough :)
def generate_session(n=5):
    import random
    elements = ['0','1','2','3','4','5','6','7','8','9',"A","a","B","b","C","c","D","d","E","e","F","g","H","h","I","i","L","l","M","m","N","n","O","o","P","p","Q","q","R","r","S","s","T","t","U","u","V","v","X","x","Y","y","Z","z"]
    sessionstr = ""
    for i in range(n):
        randel = random.randint(0,len(elements)-1)
        sessionstr += elements[randel]
    #print "sessionstr:",sessionstr
    return sessionstr



##-----------------------------------------
##        APP Engine stuff
##------------------------------------------
def main():
    debug(True)
    run_wsgi_app(bottle.default_app())
 
@error(403)
def Error403(code):
    return 'Get your codes right dude, you caused some error!'
 
@error(404)
def Error404(code):
    return 'Stop cowboy, what are you trying to find?'
 
if __name__=="__main__":
    main()