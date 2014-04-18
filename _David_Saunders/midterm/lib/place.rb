require 'json'
require 'rest-client'

#Event class.
class Event
	attr_accessor :name, :date, :location

	def initialize(name, location, price, time)
		@name = name
		@date = date
		@time = time
		@location = location
		@price = price
		
	end

end

def get_events
		res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&ll=40.756146%2C-73.99021&radius=3000&sort=dist+asc&api-key=06c41782f4c87230d42fe7d14a1e288b:12:69215696'))
		res["results"].map do |event|
			e = {name:event["results"]["event_name"], date:event["results"]["date_time_description"], location:event["street_address"]}
 			e 
		end

def to_s
		"#{@name} takes place on #{@date} at #{@time}. It is located at #{@location}, and will cost $#{@price}."
	end