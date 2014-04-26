require 'json'
require 'rest-client'

#Event class.
class Event
  attr_reader :endpoint_url


  BASE_URL = "http://api.nytimes.com/svc/events/v2/listings"

  def initialize(event)
    @endpoint_url = "#{BASE_URL}.json?&query=#{event}&api-key=06c41782f4c87230d42fe7d14a1e288b:12:69215696"
  end

end