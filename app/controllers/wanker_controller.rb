require 'open-uri'
class WankerController < ApplicationController
  def wank
    @foo= ''
    open("http://news.ycombinator.com#{ request.fullpath }") do |f|
      k.each_line do |line|
        line = line.gsub(/Hack/, 'Wank')
        line = line.gsub(/hack/i, 'wank')
        @foo += line
      end
    end
    render :inline => @foo
  end
end
