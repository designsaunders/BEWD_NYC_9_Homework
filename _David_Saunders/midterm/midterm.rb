## First, define our methods
require_relative 'lib/event'

def greet
  puts "Hi, there! Welcome to the NYC events finder. We'll help you find the perfect event!"
end

def create_event
  puts "What are you in the mood for? A movie? The Theatre? Maybe a concert?"
  category = gets.strip

  puts "What borough are you in?"
  borough = gets.strip

  Event.new(category, borough)
end


def sanitize_input(input)
	if input.include? " "
		puts "Please choose something else"
		exit
	else
		user_event = Event.new(input)
		user_event.get
		puts user_event.parsed_response
	end
end

#   puts "----------New Event----------"

#   puts "What do you want to do?"
#   name = gets.strip

#   puts "When do you want to do it?"
#   date = gets.strip

#   puts "Where do you want to do it?"
#   location = gets.strip

#   Event.new(name, date, location)
# end


 #Now call methods to run the program



greet
create_event
input = gets.strip
sanitize_input(input)






#event = create_event

# puts "What do you want to do?"
# apt_count = gets.to_i

#  0.upto(apt_count - 1) do |unit|
#   apartment = create_apartment
#   building.apartments[unit] = apartment

#   puts "Apartment added successfully \n #{apartment}"

#   puts "Is unit #{apartment.name} rented? (y)es (n)o"
#   unit_rented = gets.strip

#   if unit_rented == "y"
#     apartment.renter = create_renter
#     puts "Renter added successfully"

#     puts "How much is this unit rented for?"
#     rent = gets.to_i
#     apartment.rent = rent
#   end
# end

# puts "What do you want to do?"
# event_name = gets.strip



# puts "What would you like to do next, (v)iew all apartments? (q)uit?"
# response = gets.strip

# if response == 'v'
#   building.view_apartments
# else
#   puts "Thanks for using Ruby Building Manager"
# end
