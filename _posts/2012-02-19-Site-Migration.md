---
layout: post
title: Site Migration
date: 2012-02-19
category: notes
tags:
 - code
 - webdev
 - site
description: Site migration to new host and Jekyll with build information and description
---

<h3>Why</h3>

<p>In moving over my site from Squarespace, a well-known and excellent WYSIWYG site editor and host, I wanted to try something different.  Until I am producing content with the quality to surpass whatever medium its presented on, I don't really get the point in hosting a site in which I have no understanding of the innards.  In other words, right now I want an online repository for what I'm interested in and a presence for myself.  Until the information is abundant enough to stand on its own, I will consider the medium to be the message, and this medium is the site coding, et al. Oh, it's also way cheaper.</p>
<p>I had next to no knowledge of version control systems and simple understanding of static and dynamic content websites prior.  In other words, I had done very little webdev outside of basic HTML/CSS crafting.  Therefore moving from an overly expensive and incredibly simple WYSIWYG generator and host like squarespace to something barebones was an interesting and important journey.</p>

<p>Bearing all that in mind, I decided to modify my format, as well.  I no longer consider this a blog really but more just a digital repository for different topics I'm interested in.  As stated on my <a href="/me.html">About page</a> The pages will now be organized more by topic and less chronologically.  Topic pages will be in constant flux and ofttimes half-finished.  If it looks to be a mistake, let me know, otherwise, assume it's an ongoing project.</p>

<h3>How</h3>

<p>This site was made possible by many great people who live public online, letting me check out code and their excellent blogposts describing the process. Some of those include <a href="http://recursive-design.com/blog/2010/10/12/static-blogging-the-jekyll-way/" target="_blank">this solid blogpost</a> on Recursive Design and <a href="http://gwern.net" target="_blank">gwern</a>. Last, a little bit of last minute post-receive hooks fixed by <a href="http://twitter.com/reidab" target="_blank">@reidab</a>.</p>

<p>Rather than start from complete scratch I looked for an ultraminimal html/css pair to build off and discovered the beautiful and clean templates of <a href="http://andreasviklund.com">Andreas Viklun.</a></p>

<br />

<p>I edit the source files locally, push them with git to my server and to <a href="http://github.com" target="_blank">Github</a>, and then on the serverside <a href="http://jekyllrb.com" target="_blank">Jekyll</a> builds the static content and voila.</p>

<p> - Hosting is at the awesome/cheap <a href="http://nearlyfreespeech.net">NearlyFreeSpeech.net</a>.  It's early but NFSN seems great so far.  It is a pay-as-you-go provider, which makes it a very affordable venture and transition from the ~$20 a month I was paying at Squarespace to... well, I'll update as soon as I know.</p>

<p> - The source for the site is on <a href="github.com/theoretick/Limitlesschannels.com" target="_blank">this Github page</a>.</p>

<p> - <a href="/feed/index.xml" target="_blank">My RSS feed</a> is provided through feedburner.</p>

<p> - <a href="http://disqus.com" target="_blank">Disqus</a> servers up the comment system and continues to be an excellent provider since I am too lazy to code that myself and they do a good job of filtering spam and tracking all the fun analytics for me.</p>

<p> - <a href="http://google.com/analytics">Google Analytics</a> provides site tracking for traffic analysis, etc.  If it yields anything interesting I might put it up here, as well.</p>

<br />

<p>I am sure plenty is broken and since I wrote this all for scratch more or less in vim (like an idiot who thinks its important to jump without a net) let me know what I need to fix and if you are feeling up for it pop open the source and tell me where I need to drop a close bracket or whatever.</p>

<h3>Todo</h3>

<p> - Migrate codebase to Hyde since jekyll and ruby are weird and I want something Python-y.</p>

<h3>Possible Todo</h3>

<p> - Replace category-based system with tag-based system
<br /> - Organize articles with quality/completeness rating (1-5?)</p>


