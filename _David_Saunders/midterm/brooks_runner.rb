require_relative 'lib/brooks'


	def greet
	  puts "Hi, there! Welcome to the NYC events finder. We'll help you find the perfect event!"
	end

	def location
	  puts "Awesome! Let's get started.\nWhat borough are you in? (M)anhattan? (Q)ueens? (B)rooklyn? Bron(x)? (S)taten Island?"
    end

	def sanitize_input(input)
	  if input.include? ' '
	    puts 'Please choose something else'
	    exit
	  else
	    user_borough = Borough.new(input)
	    user_borough.get
	    puts user_borough.parsed_response
	  end
	end

	greet
	location
	input = gets.strip
	sanitize_input(input)
