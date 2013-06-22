---
layout: post
title: kickstarting your github portfolio
date: 2013-06-14
category: code
tags:
 - pcs
 - coding
 - config
description: a basic description on setting up a jekyll site and hosting to github.io.
---

As I'm currently in session at the [Portland Code School](http://portlandcodeschool.com/) there's been a push to students to start blogging and getting an online presence.  This is a brief blogpost to get anyone started and up and running with a [jekyll-generated](http://jekyllrb.com) [github.io-hosted](http://pages.github.com) personal portoflio in about 5 minutes.

It's a pain today to setup a personal website for anyone who hasn't already put the time in and while it has definitely gotten easier, it's still annoyingly complex for beginners and non-techies.  This site runs on Jekyll and with Jekyll gaining traction via the likes of [Github Pages](http://pages.github.com/) I figured I would outline a minimum zero-to-deploy(!) for an online portfolio.

**Basic Prerequisites:** assumed basic knowledge of git, Github, and installing a RubyGem

##3 Steps
<ul class="ul-toc">
  <li><a href="#makerepo">Make a Repo "name.github.io"</a></li>
  <li><a href="#installjekyll">Install Jekyll</a></li>
  <li><a href="#generatejekyll">Generate Jekyll Static-Files</a></li>
  <li><a href="#gitpush">(3b) git push</a></li>
</ul>

and the TL;DR:

    ~ $ gem install jekyll
    ~ $ jekyll new site_name
    ~ $ cd site_name
    ### EDIT SOME FILES ###
    ~/site_name $ git add .
    ~/site_name $ git commit -m "first commit of my new blog"
    ~/site_name $ git add remote http://github.com/USERNAME/USERNAME.github.io
    ~/site_name $ git push origin master


<h2 id="makerepo">1) Make a repo</h2>

For Github to know which witch is which (hehe) you need to use the proper formula. When logged-in to github go to the top-right navbar and click "create new repo". For the name enter USERNAME.github.io (i.e. I would put "theoretick.github.io"). A description if you want and click <code>Create Repository</code>.  Note that repo below for adding a pre-existing repo, we'll be using that in a second.

<h3>Alternate "and-now-your-done" step</h3>

If you dont care about anything beyond a static homepage, just go ahead and edit the generated files and voila, you're done.  You've got minimal time wasted plus some solid stylesheets.

<h2 id="installjekyll">2) Install Jekyll</h2>

Install as a gem:

    $ gem install jekyll

<h2 id="generatejekyll">3) Generate Jekyll Files</h2>

Jekyll uses Markdown + YAML headmatter for easy blogging.  Markdown rocks and is crazy powerful so spend 2 minutes familiarizing yourself with Gruber's wonderful [Markdown syntax outline](http://daringfireball.net/projects/markdown/syntax).

Here's what it looks like after running <code>jekyll new site_name</code>:

<pre>
  theoretick$ tree
  .
  ├── \_config.yml
  ├── \_layouts
  │   ├── default.html
  │   └── post.html
  ├── \_posts
  │   └── 2013-06-14-welcome-to-jekyll.markdown
  ├── css
  │   ├── main.css
  │   └── syntax.css
  └── index.html
</pre>

<br />

<h3>Pretty damn simple scaffolding:</h3>

 - **\_config file** you can more-or-less ignore
 - **\_layouts** for templates you will wrap around your posts
 - **posts** for your posts
 - **css** for css, your basic index page

Check out the generated "welcome to jekyll" posting for an showcase of simple markdown formatting and a YAML header (the stuff between the triple-dashes ('---')

Jekyll's site has plenty of dox on configuration and are super friendly, so check out [their documentation page](http://jekyllrb.com/docs/quickstart/), but for now we'll just quickly push through with the defaults to get something up and running.

<h2 id="gitpush">3b) Push it</h2>

init your repo in the jekyll directory and add all files to the stage:

    $ git init
    $ git add .

then add your remote from the aforementioned repo, and push away.

    $ git remote add http://github.com/username/username.github.io
    $ git push origin master

and after giving it time to load up, check out your new site at your github.io link username.github.io

