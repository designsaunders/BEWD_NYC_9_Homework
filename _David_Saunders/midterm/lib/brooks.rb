require 'Rest-client'
require 'json'

	class Borough
	attr_reader :endpoint_url

	BASE_URL = 'http://api.nytimes.com/svc/events/v2/listings'

	def initialize(borough)
	  @endpoint_url = "#{BASE_URL}.json&filters=#{borough}&api-key=06c41782f4c87230d42fe7d14a1e288b:12:69215696"
	end

	def get
	  response = RestClient.get(endpoint_url)
	  @parsed_response = JSON.parse(response)
	end

	def parsed_response
	  @parsed_response['results'].map do |event|
	    { borough: event['results']['borough'] }
	    end
	  end
	end
