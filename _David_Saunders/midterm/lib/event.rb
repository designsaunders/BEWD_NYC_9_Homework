require 'json'
require 'rest-client'
#require 'rubygems'
#require 'nytimes-articles'

#Event class.
class Event
  attr_reader :endpoint_url


  BASE_URL = "http://api.nytimes.com/svc/events/v2/listings"

  def initialize(event)
    @endpoint_url = "#{BASE_URL}.json?&query=#{event}&api-key=06c41782f4c87230d42fe7d14a1e288b:12:69215696"
  end

  def get
    response = RestClient.get(endpoint_url)
    @parsed_response = JSON.parse(response)
  end

  def parsed_response
  	@parsed_response['results'].map do |event|
  		  { category: event['category'], borough: event['borough'], url: event['event_detail_url']}
    end
  end
end