---
layout: post
title: How to force iTerm or (almost) any OSX applications to run as background process
date: 2013-06-29
category: code
tags:
 - code
 - config
 - osx
description: forcing osx applications to run in background
---

As a fairly recent OSX adopter one thing that has annoyed the hell out of me is the strict separation between applications and windows. It makes perfect sense and is probably the 'correct' way to go about it, but it has still driven me up the wall. My solution was to force certain 'core' apps of mine to run like daemons and disappear from my dock and app listings.  I am a rabid 'alt-tab'er and as someone obsessed with minimizing my visual clutter I've been struggling with this for a long time.

## Forcing iTerm into the background

In decommissioning such apps, the primary driver for me was to create a more succinct interface for my [iTerm2 visor window](http://technosophos.com/content/configure-iterm2-act-visor).  Running the 'hidden' visor that rolls down at a keypress is critical to my workflow and essential in rapid CL work.

I originally figured this out specifically for iTerm but after some testing **it seems to work for nearly any application**, because of this I will be using iTerm as the example throughout.  Note that a couple applications require a restart to fully 'take' but I've had surprising luck with this hack on a wide range of programs.

What we will be doing is editing the "property list" (plist) file packaged into OSX app packages.  Most applications for OSX are shipped as a convenient .app file, essentially a big folder tied up as an executable.  We'll start by going to the installed directory and opening up the target package:

    ~ theoretick$ cd /Applications/iTerm.app/Contents/
    Contents theoretick$ ls
    Frameworks     Info.plist     MacOS          PkgInfo        Resources      _CodeSignature

now we need to edit that **Info.plist** file with our favorite editor:

    Contents theoretick$ vi Info.plist

Once vi has loaded up (see what I did there?) we need to add a bit of code to the very bottom just before our closing <code>&lt;dict&gt;</code> and <code>&lt;plist&gt;</code> XML tags:

<pre>
    &lt;key&gt;LSUIElement&lt;/key&gt;
    &lt;true/&gt;
</pre>

###Before:

![before new key](/storage/iterm-plist-before.png "iTerm Info.plist Before")

###After:

![after new key](/storage/iterm-plist-after.png "iTerm Info.plist After")



And now on relaunch we'll have it with no dock presence, no alt-tab app selector listing, and none of that app-y behavior.  **Side-effects include no more menubar** but I never used that anyway.

##Some forum posts that lead me in the right direction

 * [http://hints.macworld.com/article.php?story=20010701191518268](http://hints.macworld.com/article.php?story=20010701191518268)
 * [http://hintsforums.macworld.com/archive/index.php/t-45167.html](http://hintsforums.macworld.com/archive/index.php/t-45167.html)
