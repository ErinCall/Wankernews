require 'open-uri'
class WankerController < ApplicationController
  def wank
    agent = Mechanize.new
    page = agent.get "https://news.ycombinator.com#{ request.fullpath }", :encoding => 'UTF-8'
    html_text = page.body
    html_text = html_text.gsub(/Cloud/, 'Moon')
    html_text = html_text.gsub(/CLOUD/, 'MOON')
    html_text = html_text.gsub(/cloud/i, 'moon')

    html_text = html_text.gsub(/Hack/, 'Wank')
    html_text = html_text.gsub(/HACK/, 'WANK')
    html_text = html_text.gsub(/hack/i, 'wank')
    render :inline => html_text
  end

  def passthrough
    original_location = "https://news.ycombinator.com#{ request.fullpath }"
    redirect_to original_location
  end
end
