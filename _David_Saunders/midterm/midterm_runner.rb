## First, define our methods
require_relative 'lib/event'


	puts "Hi, there! Welcome to the NYC events finder. We'll help you find the perfect event!\n \nWhat's your name, friend?"
	name = gets.strip.capitalize
	

	# puts "Sounds great! What borough are you in?"
	# borough = gets.strip.capitalize



def get_events_from_manhattan
	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Manhattan"'))
		res["results"].map do |event|
			e = {borough:event["results"]["borough"]}
			e 
		end
	end

def get_events_from_queens
	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Queens"'))
		res["results"].map do |event|
			e = {borough:event["results"]["borough"]}
			e 
		end
	end


def get_events_from_bronx
	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Bronx"'))
		res["results"].map do |event|
			e = {borough:event["results"]["borough"]}
			e 
		end
	end


def get_events_from_brooklyn
	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Brooklyn"'))
		res["results"].map do |event|
			e = {borough:event["results"]["borough"]}
			e 
		end
	end


def get_events_from_staten_island
	res = JSON.load(RestClient.get('http://api.nytimes.com/svc/events/v2/listings.json?&filters=borough:"Staten20%Island"'))
		res["results"].map do |event|
			e = {borough:event["results"]["borough"]}
			e 
		end
	end






# def create_event
# 	 puts "Awesome! What are you in the mood for?\nA (m)ovie? The (t)heatre? Maybe a (c)oncert?"
# 	 event = gets.strip 

####################################
	

	puts "Awesome! OK, #{name}, let's get started.\nWhat borough are you in? (M)anhattan? (Q)ueens? (B)rooklyn? Bron(x)? (S)taten Island?"
	borough = gets.strip.capitalize

		  if borough == "M"
			puts get_events_from_manhattan

		elsif borough == "Q"
			puts get_events_from_queens

		elsif borough == "B"
			puts get_events_from_brooklyn

		elsif borough == "X"
			puts get_events_from_bronx
			
		else borough == "S"
			puts get_events_from_staten_island

	end


create_user
#event = create_event
  

# Now call methods to run the program




# def show_results(event)
# 	events.each do |event|
#     		show_message "Category: #{event[:category]}, Borough: (#{event[:borough]})}"
#  end
# end


