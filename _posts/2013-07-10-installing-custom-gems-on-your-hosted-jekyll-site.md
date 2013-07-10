---
layout: post
title: Installing custom gems on your hosted Jekyll blog
date: 2013-05-26
tags:
 - jekyll
 - webdev
 - programming
 - site
 - rubygems
 - rvm
 - ruby
description: How to install custom gems locally on a Nearly Free Speech-hosted jekyll site
---

As regular readers might know, this site is a Jekyll-generated plop on
 NearlyFreeSpeech.net hosting.  I was recently looking into mild site
 enhancements and ran into a gem-wall.

Given the nature of shared hosting, the pre-installed software of any
kind can be limited. (Rightfully so) without superuser rights, you
 aren't going to be installing anything new, gem or otherwise.  Luckily,
 rubygems offers a convenient option for installing gems within a user's
 directory instead of the predefined gem ````INSTALLATION DIRECTORY````.

##Server-side Dir Structure

My basic setup for site deployment involves pushing my repo to a 'tmp'
folder on my server and using a post-commit hook to run ````jekyll
build```` to build repo into the 'public' directory.


    [limitlesschannels /home]$ ls -a
    .
    ├── logs
    ├── private
    │   ├── .gem/
    │   ├── git/
    │   ├── tmp/
    ├── protected
    ├── public
    │   ├── ...
    │   ├── css/
    │   ├── essays/
    │   ├── favicon.ico
    │   ├── index.html
    │   ├── me.html
    │   ├── ...
    │   ├── popular.html
    │   ├── README
    │   ├── robots.txt
    ├── tmp


## Identifying your GEM_PATH

To identify the install directory for your gems run ````gem env````.  On
my local machine the relevant output looks like:

    theoretick$ gem env
    RubyGems Environment:
      - RUBYGEMS VERSION: 2.0.3
      - RUBY VERSION: 2.0.0 (2013-05-14 patchlevel 195)
        [x86_64-darwin12.4.0]
    >>- INSTALLATION DIRECTORY:
    >>/Users/theoretick/.rvm/gems/ruby-2.0.0-p195
      - RUBY EXECUTABLE:
        /Users/theoretick/.rvm/rubies/ruby-2.0.0-p195/bin/ruby
      - EXECUTABLE DIRECTORY:
        /Users/theoretick/.rvm/gems/ruby-2.0.0-p195/bin
      - RUBYGEMS PLATFORMS:
        - ruby
        - x86_64-darwin-12
      - GEM PATHS:
    >>   - /Users/theoretick/.rvm/gems/ruby-2.0.0-p195
    >>   - /Users/theoretick/.rvm/gems/ruby-2.0.0-p195@global


On my NFSN server however it uses a slightly different path. It will of
course be an older version as usual but all we really care about here is
that ````INSTALLATION DIRECTORY```` and ````GEM PATH````s path (marked
with ````>>````):

    [limitlesschannels ~]$ gem env
    RubyGems Environment:
      - RUBYGEMS VERSION: 1.3.7
      - RUBY VERSION: 1.8.7 (2011-06-30 patchlevel 352) [i386-freebsd7]
    >>- INSTALLATION DIRECTORY: /usr/local/lib/ruby/gems/1.8
      - RUBY EXECUTABLE: /usr/local/bin/ruby18
      - EXECUTABLE DIRECTORY: /usr/local/bin
      - RUBYGEMS PLATFORMS:
        - ruby
        - x86-freebsd-7
      - GEM PATHS:
    >>   - /usr/local/lib/ruby/gems/1.8
    >>   - /home/private/.gem/ruby/1.8
      - GEM CONFIGURATION:
         - :update_sources => true
         - :verbose => true
         - :benchmark => false
         - :backtrace => false
         - :bulk_threshold => 1000
      - REMOTE SOURCES:
         - http://gems.rubyforge.org


Locally my ````INSTALLATION DIRECTORY```` and ````GEM PATH````s are the
same, however on the server they deviate a bit with the default
installation dir set to ````/usr/local/lib```` rather than my home
directory.  Luckily, you can see that two separate ````GEM PATH````s are
provided, one in the default dir and the other lives in home.  Rubygems
has a convenient command to take care of this called
````--user-install````.
This command allows you to install a gem specifically within a user's
home directory rather than the default ````GEM_HOME```` install path.


## Installing your gem

To install your target gem in your local folder we'll use that
'user-install' flag and test it out on the lovely 'git' gem:

    [limitlesschannels ~]$ gem install git --user-install
    WARNING:  You don't have /home/private/.gem/ruby/1.8/bin in your
    PATH, gem executables will not run.
    Successfully installed git-1.2.5
    1 gem installed
    Installing ri documentation for git-1.2.5...
    Installing RDoc documentation for git-1.2.5...

... and run a quick ````gem list```` to make sure we now have our shiny
new gem:

    [limitlesschannels ~]$ gem list

    *** LOCAL GEMS ***
    ...
    ezcrypto (0.7.2)
    fast-stemmer (1.0.0)
    git (1.2.5)
    haml (2.2.8)
    hoe (2.4.0)
    ...

Huzzah.
