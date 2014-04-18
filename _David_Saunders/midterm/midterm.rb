## First, define our methods
require_relative 'lib/event'


def create_event_by_name
	puts "----------New Event----------"

	puts "What do you want to do?"
	name = gets.strip

	puts "When do you want to do it?"
	date = gets.strip

	puts "Where do you want to do it?"
	location = gets.strip

	Event.new(name, date, location)
end

 #Now call methods to run the program

puts "******************  NYC Event Finder  ****************** \n \n \n"

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

puts "What do you want to do?"
event_name = gets.strip



puts "What would you like to do next, (v)iew all apartments? (q)uit?"
response = gets.strip

if response == 'v'
  building.view_apartments
else
  puts "Thanks for using Ruby Building Manager"
end
