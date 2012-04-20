innoSearch
==========

researching innovations for search engine


--------------------------------------------
	INNOSEARCH ENGINE
--------------------------------------------

@author: beltran berrocal b25zero1[at]gmail.com
@date:	 2012-04-19
@online version: http://innovatingsearch.appspot.com

About InnoSearch
InnoSearch is a research in how we can innovate search engines.
It is developed by @lyricalpolymath as a continuation of what learnt in the excellent Udacity.com CS101 course on building search Engines.
InnoSearch is in "ultra alpha" release: it is still under development as there are currently only 3 of the 10+ different functioning modes that will come in the future.
Be sure to read the Concept and each mode's motivation and explanation to better understand what's going on.
I'm looking forward for your commentaries, thoughts and ideas: b25zero1[at]gmail.com / @lyricalpolymath

Concept + Ideas
A Search Engine is made of different parts, each with it's own unique functionality and inner working. For each of these parts I wen't on and asked how it worked today and if it was possible to change something, if it was possible to innovate the search engine in at least one of its parts. The following table lists the parts that make up a (simplified) and generic search engine and for each part I describe some possible Ideas that can be implemented and some that currently can be tested in innoSearch.

InnoSearch currently implements 3 search modes:

1- CREATIVE FIBO REMIX
	When you perform a query
	- retrieves all queries ever made on the innoSearch s.engine by anybody 
    - chooses the first one that hasn't been requested by the current user/browser
    - enhances your query by remixing it to someone elses past query
it's called creative fibo in homage to the Italian Mathematician Fibonacci, since it remixes your query with (q-1) query :)


2- TRENDY SEARCHMIX
	When you perform a query
	innoSearch will fetch the top 20 google trends of the day (http://www.google.com/trends/hottrends?sa=X), choose one and remix it with your query


3- INVERSE POPULARITY
redirects you to the LAST page in the google rank for your query


READ MOTIVATIONS AND  detailed EXPLANATIONS in the online site http://innovatingsearch.appspot.com
	




-------------------------------------------------
	SOME (INCOMPLETE) TECHNICAL DETAILS
-------------------------------------------------


-------------------------------------------------
	INVERSE POPULARITY MODE
-------------------------------------------------


*** INVERSE POPULARITY - WHY ***

read the online site http://innovatingsearch.appspot.com


*** INVERSE POPULARITY - HOW IT WORKS ***

Google allows to jump directly to a page adding parameters to the query
In any case Google won't serve more than 1000 pages and, if left unfiltered, often times it will display less than that.
If you reach to the end of the query you will read this message:
"in order to show you the most relevant results, we have omitted some entries very similar to the 811 already displayed.
If you like, you can repeat the search with the omitted results included." ... of course we want it unfiltered :)

usefull query paramenters:

&start=990    
this tells the search engine to display the results starting from the n.990, hence displaying the last 10 results available.
If the search is filtered this query parameter will display the last available page

&filter=0
this tells to leave unfiltered the results, allowing to see also the sites that Google excludes
through the combination of start and filter you will be able to reach the 1000th result

query example to reach last page
https://www.google.com/search?q=your+query+here&start=990&filter=0

NOTE: In this last page Google doesn't include the robots.txt file which means that we could crawl the results and actually display them in our search engin
For now we will leave it on Google site for simplicity 


*** REFERENCES ***
useful resources: 
http://www.googleguide.com/last_results_page.html
http://www.googleguide.com/advanced_operators_reference.html



-------------------------------------------------
	TRENDY SEARCHMIX
-------------------------------------------------

throught the following link Google will direct you to todays top 10 trending topics:
http://www.google.com/trends/hottrends?sa=X
