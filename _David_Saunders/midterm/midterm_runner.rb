#This is David Saunders' Midterm Project for BEWD. 

require_relative 'lib/event'
require 'pry'

def create_user
  puts "Hi, there! Welcome to the NYC Events Finder. We'll help you find the perfect event!\n \nI'm David. What's your name?"
  gets.strip.capitalize

end

def get_events(borough)
<<<<<<< HEAD
	res = JSON.load(RestClient.get("http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:#{borough.capitalize}"))
		res["results"].map do |event|
			{borough:event["results"]["borough"]}
		end
	end
end
# def get_events_from_manhattan
# 	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Manhattan"'))
# 		res["results"].map do |event|
# 			e = {borough:event["results"]["borough"]}
# 			e 
# 		end
# 	end

# def get_events_from_queens
# 	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Queens"'))
# 		res["results"].map do |event|
# 			e = {borough:event["results"]["borough"]}
# 			e 
# 		end
# 	end


# def get_events_from_bronx
# 	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Bronx"'))
# 		res["results"].map do |event|
# 			e = {borough:event["results"]["borough"]}
# 			e 
# 		end
# 	end


# def get_events_from_brooklyn
# 	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Brooklyn"'))
# 		res["results"].map do |event|
# 			e = {borough:event["results"]["borough"]}
# 			e 
# 		end
# 	end


# def get_events_from_staten_island
# 	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Staten20%Island"'))
# 		res["results"].map do |event|
# 			e = {borough:event["results"]["borough"]}
# 			e 
# 		end
# 	end






# def create_event
# 	 puts "Awesome! What are you in the mood for?\nA (m)ovie? The (t)heatre? Maybe a (c)oncert?"
# 	 event = gets.strip 

####################################
	

	puts "Awesome! Let's get started.\nWhat borough are you in? (M)anhattan? (Q)ueens? (B)rooklyn? Bron(x)? (S)taten Island?"
	borough = gets.strip.capitalize

		  if borough == "M"
			puts get_events_from_manhattan

		elsif borough == "Q"
			puts get_events_from_queens

		elsif borough == "B"
			puts get_events_from_brooklyn

		elsif borough == "X"
			puts get_events_from_bronx
			
		else category == "S"
			puts get_events_from_staten_island

	end


create_user
#event = create_event
  

# Now call methods to run the program


=======
  	res = JSON.load(RestClient.get("http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:#{borough.capitalize}&api-key=06c41782f4c87230d42fe7d14a1e288b:12:69215696"))
	res["results"].map do |event|
		puts "#{event["event_name"]	}, #{event["venue_name"] }"
	end
end


name = create_user
>>>>>>> 1b4d5fa2061b735e28cc98a3cfcb3666f24c159d

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
