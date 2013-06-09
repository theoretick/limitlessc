#
# title:  git-activity plugin for jekyll.rb
# author: theoretick
# credit: modified code and original idea from github.com/alx
#

require 'git'
# require 'maxlength'

module Jekyll

  class String

    def maxlength(ceiling=80)
      in_string = self
      if in_string.length > ceiling
        # minus 3 for ellipsis
        out_string = in_string.slice(0..(ceiling-3))
        return out_string+'...'
      else
        return in_string
      end
    end
  end

  class GitActivityTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      result = ""
      git_base = Git.open(File.join(Dir.getwd, "."))
      commit_url = git_base.remote.url.gsub(/\.git/, %q{/commit/})
      displayed_commits = 2

      git_base.log(displayed_commits).each do |commit|
          result << "<li>"
          result << commit.date.strftime("%d%B")
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
