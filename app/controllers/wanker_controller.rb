require 'open-uri'
class WankerController < ApplicationController
  include WankerHelper

  def wank
    agent = Mechanize.new
    timeout_threshold = ENV['HN_TIMEOUT'] || 10 #seconds
    timeout_threshold = timeout_threshold.to_i
    agent.read_timeout = timeout_threshold
    begin
      page = agent.get "https://news.ycombinator.com#{ request.fullpath }", :encoding => 'UTF-8'
      html_text = ''
      Timeout.timeout(timeout_threshold) do
        html_text = page.body
      end
      html_text = wankify('hack', 'wank', html_text)
      html_text = wankify('cloud', 'moon', html_text)
      html_text = wankify('woman', 'cat', html_text)
      html_text = wankify('women', 'cats', html_text)
      html_text = wankify('diamond', 'lasagna', html_text)

      render :inline => html_text
    rescue Net::HTTP::Persistent::Error,
           Timeout::Error => e
      render :template => 'timeout'
      ExceptionNotifier::Notifier.exception_notification(request.env, e).deliver
    end
  end

  def passthrough
    original_location = "https://news.ycombinator.com#{ request.fullpath }"
    redirect_to original_location
  end
end
