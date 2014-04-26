#This is David Saunders' Midterm Project for BEWD. 

require_relative 'lib/event'
require 'pry'

def create_user
  puts "Hi, there! Welcome to the NYC Events Finder. We'll help you find the perfect event!\n \nI'm David. What's your name?"
  gets.strip.capitalize

end

def get_events(borough)
  	res = JSON.load(RestClient.get("http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:#{borough.capitalize}&api-key=06c41782f4c87230d42fe7d14a1e288b:12:69215696"))
	res["results"].map do |event|
		puts "#{event["event_name"]	}, #{event["venue_name"] }"
	end
end


name = create_user

puts "Awesome! OK, #{name}, let's get started.\n\nIn order to help you find the best event, we need to know where you are!\n\nWhat borough are you in? (M)anhattan? (Q)ueens? (B)rooklyn? Bron(x)? (S)taten Island?"
borough = gets.strip.downcase
#I switched to .downcase because the X in Bronx shouldn't be capitalized, and it threw out an error

case borough 
	when "m"
		puts get_events("Manhattan")
	when "q"
		puts get_events("Queens")
	when "b"
		puts get_events("Brooklyn")
	when "x"
		puts get_events("Bronx")
	when "s"
		puts get_events("Staten+Island")
end

#the Case method is much nicer than the if/else/elsif approach I was initially trying to make work. 

puts "Wow! There sure are some great things happening!\n\nWe hope you have a great time :) Thanks for checking out NYC Events Finder"