require 'open-uri'
class WankerController < ApplicationController
  def wank
    @foo= ''
    open('http://news.ycombinator.com') do |f|
      f.each_line {|line| @foo += line }
    end
    render :inline => @foo
  end
end
