#
# title:  git-activity plugin for jekyll.rb
# author: theoretick
# credit: modified code and original idea from github.com/alx
#

unless Kernel.respond_to?(:require_relative)
  module Kernel
    def require_relative(path)
      require File.join(File.dirname(caller[0]), path.to_str)
    end
  end
end

require 'git'
require_relative 'maxlength'

module Jekyll

  class GitActivityTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      result = ""
      git_base = Git.open(File.join(Dir.getwd, "."))
      commit_url = git_base.remote.url.gsub(/\.git/, %q{/commit/})
      displayed_commits = 1

      git_base.log(displayed_commits).each do |commit|
          result << "<li class='gitactivity'>"
          result << commit.date.strftime("%d%b")
          result << " - <a href='#{commit_url}"
          result << commit.sha
          result << "/'>"
          result << commit.message.maxlength
          result << "</a></li>"

      end
      return "<ul>#{result}</ul>"
    end
  end
end

Liquid::Template.register_tag('gitactivity', Jekyll::GitActivityTag)
