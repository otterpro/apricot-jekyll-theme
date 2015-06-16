---
title: Apricot Jekyll Theme 
permalink: apricot-jekyll/
img: https://c1.staticflickr.com/5/4115/4858568740_901503edff_o.jpg

show_in_menu: true
---
Apricot is a theme for Jekyll static site generator. 
I created it so that I could use it for my own [personal blog](http:/www.otter.pro). 
I hope you find it useful.

Additional front matter settings for this theme
===============

Change site header image
----------
Add "img" in the front matter.  Images located in the local server should be
placed in the "img/" directory.

    img: FILENAME.JPG

    img: http://example.com/image.jpg

Show page in header menu
------------
If set to true, the page is shown in the navigation menu. 
By default, the page is not shown on the menu.

    show_in_menu: true

Generation of table of contents
----------
[Jekyll Table of Contents Generator](https://github.com/dafi/jekyll-toc-generator)

By default, table of contents are generated for all pages and
posts.
To disable table of contents for individual page or post, add the following
front matter.  

    noToc: true

Sitemap configuration
------------
Sitemap.xml contains the sitemap, which are [used by the 
the search engine to optimize its search](https://support.google.com/webmasters/answer/156184?hl=en).
The sitemap.xml is [based on this blog post](http://davidensinger.com/2013/11/building-a-better-sitemap-xml-with-jekyll/)

    sitemap:
        lastmod: 2014-01-23
        priority: 1  #0.0 min -- 1.0 max
        changefreq: 'weekly'
        exclude: true  #if true, exclude from sitemap.xml

Code highlighting
---------
I really hated embedding liquid tag "{&#37; highlight LANG %}" for highlighting any
code within the markdown text because it made the text look ugly. I also wanted the highlighter to be able to detect the
language without having to specify the language.  
[Highlight.js](https://highlightjs.org/) offered the best highlighting,
    although it is client-based javascript. 

Github
=======
<https://github.com/otterpro/apricot-jekyll>

Additional thanks to
==========
* [HTML inline SVG Icons](http://codepen.io/ruandre/pen/howFi)
* [Image of apricot label from California Historical Society](https://flic.kr/p/rbYkYV)

{% comment %}
TODO
=======
* enable certain tags/categories (and their posts) to be displayed on the sidebar
    sidebar_categories: project
    sidebar_tags: important, linux, jekyll
* add "weight" in front-matter for pages, and sort by weight 
* currently all cats and tags are shown

* add SVG icon for email & sitemap <http://codepen.io/ruandre/pen/howFi>
* add instagram, twitter, linked-in, flickr,  other social icons
* embed youtube code
* add like,tweet to each post
    see font-awesome page
* CSS replace .content with article element

* check HTML output to make sure there is no double "/" in URL path
* see in head.html
  <link rel="canonical" href="{{ page.url | replace:'index.html','' | prepend: site.baseurl | prepend: site.url }}">
* somehow, it was showing "//mypage.html", not "/mypage.html".  

{% endcomment %}
