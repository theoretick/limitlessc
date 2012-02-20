---
Layout: post
Title: Site Migration
Date: 02-19-2012
Category: site
Tags:
 - code
 - webdev
 - site
Description: Site migration with build information and description
---

In moving over my site from Squarespace, a well-known and excellent WYSIWYG site editor and host, I wanted to try something different.  Until I am producing content with the quality to surpass whatever medium its presented on, I don't really get the point in hosting a site in which I have no understanding of the innards.  In other words, right now I want an online repository for what I'm interested in and a presence for myself.  Until the information is abundant enough to stand on its own, I will consider the medium to be the message, and this medium is the site coding, et al. Oh, it's also way cheaper.

This project was made possible by ___, ____, Gwern's excellent "about page," and a little bit of last minute post-receive Git fixes by @Reidab.

The source for my site is hosted over on github.  I edit the source files locally, push them to my server and to Github, and then on the serverside Jekyll builds the static content(QUICK NOTE ABOUT STATIC VERSUS DYNAMIC?) and voila.     

Rather than start from complete scratch I looked for an ultraminimal html/css pair to build off and discovered the beautiful and clean templates of Andrea Viklun.

Hosting is provided by NearlyFreeSpeech.net (Recommended by Gwern).  It's early but NFSN seems great so far.  It is a pay-as-you-go provider, which makes it a very affordable venture and transition from the ~$20 a month I was paying at Squarespace.

----------

It looks like I finally got my new blog up and running, yay!

The basic site is now running hosted at the awesome (and cheap) hosting provider NearlyFreeSpeech.net.  The static content is being generated with Jekyll and pushed to the server via Git.  I had next to no knowledge of version control systems and only a vague understanding of the precise difference between static and dynamic content websites prior.  In other words, I have done very little webdev outside of basic HTML/CSS crafting.  Therefore moving from an overly expensive and incredibly simple WYSIWYG generator and host like squarespace to something barebones was an interesting and important journey.

Once I get everything finished I will be migrating over all my posts, adding RSS, figuring out how to throw up a GoogleAnalytics engine, and hopefully getting comments up with Disqus.

I am sure plenty is broken and since I wrote this all for scratch more or less in vi (like an idiot who thinks its important to jump without a net) let me know what I need to fix and if you are feeling up for it pop open the source and tell me where I dropped a close bracket or whatever.

hosting
template
jekyll code
git and github
