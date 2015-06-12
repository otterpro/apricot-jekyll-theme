---
title: Apricot Jekyll Theme 
permalink: apricot-jekyll/
show_in_menu: true
---
Apricot is a theme for Jekyll static site generator.

Front matter setting
===============

Change site header image
----------
Add "img" in the front matter.

    img: /img/FILENAME.JPG

Show page in header menu
------------

   show_in_menu: true

Sitemap
------------
* optional setting for sitemap.xml

    sitemap:
        lastmod: 2014-01-23
        priority: 1  #0.0 min -- 1.0 max
        changefreq: 'weekly'
        exclude: true  #if true, exclude from sitemap.xml

Github
=======
[Github](https://github.com/otterpro/apricot-jekyll)

Thanks to
==========
[Jekyll Table of Contents Generator](https://github.com/dafi/jekyll-toc-generator)
[Sitemap based on this blog post](http://davidensinger.com/2013/11/building-a-better-sitemap-xml-with-jekyll/)
[HTML inline SVG Icons](http://codepen.io/ruandre/pen/howFi)

TODO
=======
In _config.yml

* favicon

* enable certain tags/categories (and their posts) to be displayed on the sidebar
    sidebar_categories: project
    sidebar_tags: important, linux, jekyll

* currently all cats and tags are shown

* add SVG icon for email, sitemap, <http://codepen.io/ruandre/pen/howFi>
* add instagram, twitter, linked-in, flickr,  other socials 
* embed youtube
* add like,tweet to each post
* CSS replace .content with article element


