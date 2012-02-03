require 'open-uri'
class WankerController < ApplicationController
  def wank
    agent = Mechanize.new
    page = agent.get "http://news.ycombinator.com#{ request.fullpath }", :encoding => 'UTF-8'
    html_text = page.body
    html_text = html_text.gsub(/Hack/, 'Wank')
    html_text = html_text.gsub(/hack/i, 'wank')
    render :inline => html_text
  end
end
