---
permalink: apricot-jekyll/
img: https://c1.staticflickr.com/9/8675/16533077649_518a083613_o.jpg
category: project
tag: jekyll
additional_copy_path: ~/project/otter.pro/apricot-jekyll/README.md
hide_date: true
title: Apricot Jekyll Theme 
strip_front_matter: true
---
Apricot is a theme for [Jekyll](http://jekyllrb.com) static site generator. 
I created it so that I could use it for my [personal blog](http://www.otter.pro). 

Additional settings 
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

Show URL in header menu
-----------------
Other URL can be added to the menu items, which are shown in the navigation menu.

In `_config.yml`, add `menu` items like this: 

    menu:
      -
        url: "/categories/project/"
        title: "Projects"
      -
        url: "https://github.com/otterpro/"
        title: "Github"
        target: "_blank"  

`target: "_blank"` opens the URL in a new window

Generation of table of contents
----------
[Jekyll Table of Contents Generator](https://github.com/dafi/jekyll-toc-generator)

By default, table of contents are generated for all pages and
posts.
To disable table of contents for individual page or post, add the following
front matter.  

    noToc: true

Don't display dates on certain posts
-----------------

    hide_date: true

Additional note: `category` and `tag` doesn't work on page properly because Jekyll doesn't count
them for pages, but only for posts.  Since I wanted to use categories for pages
and not just for posts, I've decided to not use the page.  Instead, I'd prefer
just hiding the dates to give it an appearance of a page.


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
language without having to specify the language. It doesn't have to be
super-accurate.  Just highlight it so that numbers and common keywords look
different.    
[Highlight.js](https://highlightjs.org/) offered the best highlighting,
    although it is client-based javascript. 

Flickr
=====
[Flickr plugin](https://github.com/cnunciato/jekyll-flickr)
I modified it, so that it defaults to "Large" image instead of "Medium" sized
image, as before.

Requires typhoeus gem.

in _config.yml

    flickr:
      api_key: YOUR_FLICKR_API_KEY_HERE

Github
=======
<https://github.com/otterpro/apricot-jekyll>

Additional thanks to
==========
* [HTML inline SVG Icons](http://codepen.io/ruandre/pen/howFi)
* [Image of apricot label from California Historical Society](https://flic.kr/p/rbYkYV)
* [Jekyll category plugin](https://github.com/zroger/jekyll-categories)
* [Font-Awesome-SVG-PNG](https://github.com/encharm/Font-Awesome-SVG-PNG)

License and Copyright
====================
Apricot Theme for Jekyll is free software released under the [MIT License](http://www.opensource.org/licenses/MIT).  

<!--
TODO
=======
*  add 4th column in footer: "Favorite article", which shows tag "favorite" page

Improve TOC style, example
<http://idratherbewriting.com/documentation-theme-jekyll/mydoc/mydoc_yaml_tutorial.html>

* see <http://www.michael-noll.com/tutorials/writing-an-hadoop-mapreduce-program-in-python/>
* for TOC

* make title full-width with background 
*       see davidwalsh.name
* or make it transparent, like 
* https://tech.zalando.com/blog/watch-fashion-is-hard-postgresql-is-easy/
*
* screenshot - make sure screenshot of default header img, not otter.pro header
    img
* assign thumbnail image to each categories/tags so that they have thumbnail
*   if the article doesn't have any header image thumbnail
* related articles are shown at the bottom - just match the tags
    * or categories
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

* Make better SASS media query (see http://davidwalsh.name/sass-media-query)

The _____ logo was designed by David Jones. It is Copyright © 2014 Jerry D'Antonio. All Rights Reserved.
-->
