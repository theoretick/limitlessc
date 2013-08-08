---
layout: post
title: how to properly install and configure Postgresql in OSX Mountain Lion
date: 2013-08-04
category: code
tags:
 - code
 - postgresql
 - osx
description: a short and up to date description of how to properly configure Postgres on OSX Mountain Lion
---

<br />

** Setting up Postgres locally on your dev environment is getting to be a
more and more important thing for a couple reasons: **

 1) <i>Postgres most closely adheres to spec among the SQLs.</i>
 which means any future transitions (PG => MySQL, PG => SQLite) will
 be more-or-less issue free.

 2) <i>Ideally you should be running the same DB locally and in production.</i>
 and with the prevalence of Heroku and other hosted platforms, PG seems
 to be the preferred production choice.

<br />


#### tools we'll need:
 * [homebrew package manager](http://brew.sh)
 * your favorite terminal (I'm currently using [iTerm2](http://iterm2.com))


<br />

First, install PG through homebrew

{% highlight sh %}
  brew install postgresql
{% endhighlight %}

As the instructions say upon correct installation, run these next two
commands for simple initialization and environment config:

{% highlight sh %}
  initdb /usr/local/var/postgres -E utf8
{% endhighlight %}


{% highlight sh %}
  pg_ctl -D /usr/local/var/postgres -l logfile start
{% endhighlight %}

Connect to our default local DB:

{% highlight sh %}
  psql -d postgres -h localhost
{% endhighlight %}

Now you have started PG with the default database 'postgres' (```-D```
means database, and we pointed it to ```/usr/local/var/postgres```)

You should see a nice console prompt now. Looks like this:

{% highlight psql %}
  postgres=#
{% endhighlight %}

<br />

#### 10 second primer on SQL commands:
 * The caps are optional but pretend that they aren't, its convention, but make sure to adopt it
 * Remember that trailing semicolon, its important

Lets start with a quick query to see what roles are defines so far.
Assuming your system is fairly clean it should only have your username listed:

{% highlight psql linenos %}
  postgres=# SELECT rolname FROM pg_roles;
    rolname
  ------------
   theoretick
  (1 rows)
{% endhighlight %}

Looks good, now let's add a special role just for our DB user, we'll call
it 'dev_connect'.  We should also give it a password but it really doesn't
need to be anything serious so we'll just use the same thing:

{% highlight psql %}
  postgres=# CREATE ROLE dev_connect WITH LOGIN CREATEDB PASSWORD 'dev_connect';
{% endhighlight %}

and let's see if it worked:

{% highlight psql linenos %}
  postgres=# SELECT rolname FROM pg_roles;
    rolname
  ------------
   theoretick
   dev_connect
  (2 rows)
{% endhighlight %}


There it is!  Now just hit ```\q``` to exit the PG console and you're done.

### A Last Note for Rails devs

Chances are a bunch of those who read this will be Ruby/Rails developers on OSX.

Now if you ended up reading this page because you already screwed up in setting up your Rails with the default SQLite, you will need a few extra steps to transition over.

**NOTE:** this WILL wipe your DB, its more-or-less unavoidable without a lot more work, so be forewarned:

{% highlight sh %}
  # TODO: edit gemfile, production vs dev + pg gem
  # TODO: edit schema
  # TODO: db:drop
  # TODO: db:migrate
  # TODO: db:setup
  # TODO: db:migrate
  # TODO: db:setup
{% endhighlight %}

