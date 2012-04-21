<!DOCTYPE html>
<html><head>
<title>InnoSearch - Searching new ways of searching</title>
<meta charset="UTF-8">
<meta name="description" content="" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"></script>
<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
<script type="text/javascript" src="static/js/prettify.js"></script>                                   <!-- PRETTIFY -->
<script type="text/javascript" src="static/js/kickstart.js"></script>                                  <!-- KICKSTART -->
<link rel="stylesheet" type="text/css" href="static/css/kickstart.css" media="all" />                  <!-- KICKSTART -->
<link rel="stylesheet" type="text/css" href="static/style.css" media="all" />                          <!-- CUSTOM STYLES -->
</head><body><a id="top-of-page"></a>
<div id="wrap" class="pop">
<!-- ===================================== END HEADER ===================================== -->

	<div class="col_12">
	
	<form method="post" action="/search">
    <!-- Search Field 
    <div class="col_12">-->
    <!--<div class="col_2">&nbsp;</div>-->
	<div id="searchbox" class="col_12 pop">
    <!--<h1 style="padding:0 10px; margin:0"><span style="color:#F90">Inno</span>Search</h1>
    <h6 style="padding:0 0 20px 10px; margin:0 ; border-top:thin">searching new ways of searching</h6>-->
    <h1><span style="color:#F90">Inno</span>Search</h1>
    <h6>searching new ways of searching</h6>
	<input id="query" name="query" type="text" class="col_11"/>
    <button class="small orange" type"submit" value="Submit">Search</button><br>
    <span class="note">NOTE: PLEASE ALLOW POPUPS - many modes require you to allow pop-ups for this page because the search will open an external page on Google or DuckDuckGo</span>
    </div> 
    <!--<div class="col_2">&nbsp;</div>
    </div>-->
    
    <!-- Tabs Selector: Innovation Modes -->
    <div class="col_12">
    <ul class="tabs left wrap">
    <h5>Choose innovation Mode</h5>
    <li><a href="#tabr1">Search Experience</a></li>
    <li><a href="#tabr2">Ranking</a></li>
    <li><a href="#tabr3">Index</a></li>
    </ul>
    
    <!-- TAB 1: Innovating Search Experience -->
    <div id="tabr1" class="tab-content">
      <div class="col_4">
          <fieldset>
              <legend>1. choose submode</legend>
               <input name="submode" type="radio" id="creativefibo" value="creativefibo" checked="CHECKED">
               <label class="inline" for="creativefibo">&nbsp;Creative Fibo Remix</label>
               <br>
               <input name="submode" type="radio" id="trendysearch" value="trendysearch">
               <label class="inline" for="trendysearch">&nbsp;Trendy SearchMix</label>
          </fieldset>
          <fieldset>
              <legend>2. choose Search Engine</legend>
              <select id="select1" name="chosenSE" style="width:100%">
              <option value="se_google" selected>Google</option>
              <option value="se_dduckgo">duckduckgo</option>
              </select>
          </fieldset>
      </div>
      <div class="col_8">
          <p><br>
          <h4>Associative Activation</h4>
          <h5>enhancing creativity</h5>
          One of the most important mechanisms of the creative thought is that of connecting distant ideas. While Today Search Engines abide to the paradigm of Convergent Thinking, that is all about focus, analysis and attention, they don't help in performing "Divergent Thinking" searches that can instead help you generate unexpected thoughts and ideas. InnoSearch, proposes a couple of solution to this missing functionality of normal search Engines.<br><br>
          <h6>Creative Fibo Remix</h6>
          There are several ways in which divergent thinking can happen, but one of the most important ones is that two different, very distant, thoughts can briefly overlap in our working memory, and if they make a meaningful solution to a given problem we are currently facing, they can generate the "Eureka moment" and create new neural networks in our brains.
          <br>
          The <i>"Creative Fibo Remix"</i> Mode simulates this neural process by <b>remixing your query with somebody elses query</b>, and launching this enhanced query on the search engine of your choice. This is therefore your gateway to unexpected solutions: even if they might seem meaningless if you try at the right moment and with the right questions, you might <b>find something surprising</b>.
          Another important innovative aspects is that through this remixing process, innoSearch becomes the <b>first collaborative search engine.</b><br>          
          <b>WARNING</b> NOTE: in order to use it you need to allow popups for this website - this is used only to open the requested search on another page.<br>
         	If you are courious you can also <a href="/otherqueries">see all queries</a>  
          </p>
          <p>
         <h6>Trendy SearchMix</h6>
         Still on the remixing paradigm of search, this mode will crawl the <a href="http://www.google.com/trends/hottrends?sa=X" target="_trends"><b>Google Trends</b></a> page for the <b>current day</b>, select one of the top 20 searches for the day and <b>enhance you query</b> with it, launching it in a new browser tab.<br>This is just one of the possible remixes that can be used to creatively boost your search results.
          </p>
          <p>
          <h6>Reference and Further read</h6>
          	- <a href="http://www.everythingisaremix.info/">Everything is a Remix</a><br>
            - <a href="http://www.wired.com/wiredscience/frontal-cortex/">Jonah Lehrer</a> - <a href="http://www.amazon.com/Imagine-Creativity-Works-Jonah-Lehrer/dp/0547386079">Imagine: How Creativity Works</a><br> 
            - Wikipedia - <a href="http://en.wikipedia.org/wiki/Divergent_thinking">Divergent Thinking</a> / <a href="http://en.wikipedia.org/wiki/Creativity">Creativity</a>
</p>
      </div>
    </div> <!-- END TAB1-->
    
    <!-- TAB 2 : Innovating Ranking Algorithms -->
    <div id="tabr2" class="tab-content">
    	<div class="col_4">
          <fieldset>
              <legend>1. choose submode</legend>
               <input name="submode" type="radio" id="inversepopularity" value="inversepopularity">
               <label class="inline" for="inversepopularity">&nbsp;InversePopularity</label>
               <br>
               <input name="submode" type="radio" id="distantremixer" value="distantremixer" disabled>
               <label class="inline" for="distantremixer">&nbsp;Distant Word Remixer <span class"comingsoon">(coming soon)</span></label>
           </fieldset>
      </div>
    	<div class="col_8">
          <p><br>
          <h4>Unexpected Winners</h4>
          <h5>hijacking Ranking Algorithms</h5>
          </p>
          <p>
          Ranking is where the most part of the Search Engine Art happens: the wicked algorithm selects, trims, filters, and looks for the "best" page according to a complex series of parameters and rules. But is he really selecting the "best" pages?           
          That is only according to a certain point of view, a very narrow one. When getting these pages the ranking algorithm has exercised a decision power that could potentially leave out interesting results.
          </p>
          <p>
          <h6>Inverse Popularity</h6>
          Give the last pages of a google search it's 15 minutes of fame: <b>this mode will open your query in google, but instead of opening the first page, it will open the last one</b>, where the long forgotten <b>link number 1000</b> has been sitting waiting for someone to notice him.
          Again, for the distant connection rule that empowers creativity, this mode allows you to discover unexpected results that, maybe, should have been ranked higher.<br><br>
          Read the Concept Tab below to understand more possible solutions.
          </p>
      </div>    
    </div> <!-- END TAB2-->
    
    <!-- TAB 3: Innovating How Things are Indexed -->
    <div id="tabr3" class="tab-content">
    	<div class="col_4">
          <fieldset>
              <legend>1. choose submode</legend>
               <input name="submode" type="radio" id="letters" value="letters" disabled>
               <label class="inline" for="letters">&nbsp;Single Letters <span class"comingsoon">(coming soon)</span></label>
               <br>
               <input name="submode" type="radio" id="feelings" value="feelings" disabled>
               <label class="inline" for="feelings">&nbsp;Feelings <span class"comingsoon">(coming soon)</span></label>
          </fieldset>
      </div>
    	<div class="col_8">
          <p><br>
          <h4>Curated Index</h4>
          <h5>rethinking the keywords</h5>
          </p>
          <p>
         At first sight it seems fearly obvious: what search engines ought to do is store the single keywords found in a page, maybe count them, and then pass it on to the ranking algorithm. Is it really just like that? Can we think of anything else that can be done to the contents of a page or that is worth extracting.<br><br> Read the Concept Tab below to understand and see a few of the coming options.
          </p>
      </div>
    </div> <!-- END TAB3-->  
    </div><!-- END TAB selector-->
    </form>
    
    <!-- Tabs Selector 2: About & Credits -->
    <div class="col_12">
    	<!-- Tabs Left -->
        <ul class="tabs left">
          <li><a href="#tabinfo1">About</a></li>
          <li><a href="#tabinfo2">Concept+Ideas</a></li>
          <li><a href="#tabinfo3">Credits+Licence</a></li>
        </ul>
        
        <!--START TAB-INFO-1 - ABOUT -->
        <div id="tabinfo1" class="tab-content">
        <h4>About InnoSearch</h4>
        InnoSearch is a research in how we can innovate search engines.<br>
        It is developed by <a href="http://www.twitter.com/lyricalpolymath">@lyricalpolymath</a> as a continuation of what learnt in the excellent <a href="http://www.udacity.com" target="ud">Udacity.com</a> <a href="http://www.udacity.com/overview/Course/cs101" target="ud">CS101 course</a> on building search Engines.
       <br>InnoSearch is in "ultra alpha" release: it is still under development as there are currently only 3 of the 10+ different functioning modes that will come in the future.<br>
       Be sure to read the Concept and each mode's motivation and explanation to better understand what's going on.<br>
       I'm looking forward for your commentaries, thoughts and ideas: b25zero1[at]gmail.com / <a href="http://www.twitter.com/lyricalpolymath">@lyricalpolymath</a>
 
        </div><!--END TAB-INFO-1 - ABOUT -->
        
        <!--START TAB-INFO-2 - CONCEPT -->
        <div id="tabinfo2" class="tab-content">
         <h4>Concept + Ideas</h4>
                A Search Engine is made of different parts, each with it's own unique functionality and inner working. For each of these parts I wen't on and asked how it worked today and if it was possible to change something, if it was possible to innovate the search engine in at least one of its parts.
                The following table lists the parts that make up a (simplified) and generic search engine and for each part I describe some possible Ideas that can be implemented and some that currently can be tested in innoSearch.<br><br>
                 <table cellspacing="0" cellpadding="0" class="tight">
        <thead><tr>
            <th>S.E.Part</th>
            <th>THE DATA</th>
            <th>THE CRAWLER</th>
            <th>THE INDEX</th>
            <th>THE RANKING</th>
            <th>THE SEARCH INTERFACE</th>
            <th>THE RESULTS</th>
        </tr></thead>
        <tbody><tr>
            <th>what is it</th>
            <td>Web Pages</td>
            <td>an unmanned software that navigates the web</td>
            <td>What and Where keywords and pages are stored</td>
            <td>How the s.e. classifies and assigns importance to pages</td>
            <td>The form / page where the user inserts a query</td>
            <td>Representation of the result list</td>
        </tr><tr>
            <th>ie Google</th>
            <td>the whole www</td>
            <td>Google bot that searches</td>
            <td>content of pages separated by words</td>
            <td>- PageRank (former Algorithm) counts Keyword appearances in the page<br>
                - assigns importance to pages if they are linked by a lot of other pages<br>
                Note: it's a looot more complex than this..the ranking algorithm is where the mambo jambo of search engines really happens today (is it?)
            </td>
            <td>- a simple and minimal form<br>
            - search through image and other modes of submitting a query
            </td>
            <td>a simple list</td>
        </tr><tr>
            <th>Thoughts on Possible Innovations</th>
            <td>- can be a SUBSET (ie only Hotels or flights)<br>
                - can be a COMBINATION of SUBSETS (ie linking together 2 or more datasets)
            </td>
            <td>Can we innovate this? maybe it's just a very technical intervention that allows to speed up the research. I'm very new to search engines and this is a blind spot for me. The only idea I can come up  with is "FETCH_ME_THIS" (a web app that allows you to create your own crawler, configure it's parameters and launch it on the web)</td>
            <td>Can We separate something more than words to analyze?<br>can we index by: single letters,full sentences,bolds or titles,exctract a summary, analyze the mood independently from the appearing keywords, specific sentences such as "I Love", or "I Hate" etc.</td>
            <td><strong>-Is popularity ovverated? try the "Inverse Popularity" Mode in innoSearch</strong><br>
            - instead of counting keywords, rerankaccording to specific subkeywords or categories (ie emotions: find the most joyfull page - this is a coming soon in innoSearch :))<br>
            - people rank (already exists ie Reddit)<br>
            - rank according to location of user...etc. 
            </td>
            <td><strong>- insert multiple choices or enhance the user query with other elements? try the CreativeFibo Remix and Trendy SearchMix modes in innoSearch</strong><br>
            can it be different than a form? can we insert other inputs? (mouse clicks, images, webcam etc), ie input a webpage and obtain similar pages<br>
            - Transcode ala Nam June Paik?(convert bytes of img to txt and viceversa)<br>
        </td>
            <td>Does it really have to be just a list? - research and design information visualization option according to the type of results and searches. (There are a lot of experiments on this out on the web)</td>
        </tr>
        </tbody>
        </table>

        </div><!-- END TAB-INFO-2 - Concept -->
        
        
        
        <!--START TAB-INFO-3 - CREDITS -->
      <div id="tabinfo3" class="tab-content">
        <h4>Credits + Licence</h4>
        InnoSearch is built upon the code and lessons of <a href="http://www.cs.virginia.edu/~evans/">David Evans</a> and of all the <a href="http://www.udacity.com" target="ud">Udacity.com</a> <a href="http://www.udacity.com/overview/Course/cs101" target="ud">CS101 course</a> on building search Engines.<br>
        - I strongly suggest to anyone interested in learning something interesting to enroll in one of the free <a href="http://www.udacity.com" target="ud">Udacity.com</a> courses: they are among the best of the new wave of e.learning platforms out there.<br>
        - Special Thanks goes to <a href="http://twitter.com/ecmendenhall/">@ecmendenhall/</a> and his impressive <a href="http://davedavefind.appspot.com/" target="_blank">DaveDaveFind</a> Search Engine, for pointing to the Bottle Web Framework and for his <a href="http://davedavefind.tumblr.com/" target="_blank">excellently documented blog</a> on the development of his own search engine DaveDaveFind; it solved the frustration of several days of fighting with Google App Engine. <br><br>
        
        <h6>Code Credits</h6>
        InnoSearch is built with:<br>
        - <a href="http://python.org/" target="_blank">Python</a><br>
        - <a href="http://bottlepy.org/docs/dev/" target="_blank">the Bottle web framework</a><br>
        - <a href="https://appengine.google.com/" target="_blank">Google App Engine</a><br>
        - <a href="http://www.99lime.com/elements/" target="_blank">HTML Kickstart</a><br><br>
        
        <h6>Code Download + Licence</h6>
        InnoSearch is realeased under :
        <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a><br /><a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/">Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License</a>.<br>
        You can download the code from <a href="https://github.com/lyricalpolymath" target="_blank">GitHub</a></div><!-- END TAB-INFO-3 - Credits -->
 
    </div>

<!-- ===================================== START FOOTER ===================================== -->
</div>

</div><!-- END WRAP -->
</body></html>