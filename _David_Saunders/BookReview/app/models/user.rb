class User < ActiveRecord::Base
	has_many :reviews

	def name 
		"#{first_name} #{last_name}"
	end

	def is_teen?
		age > 12 && age < 19
	end

	def has_long_name?
		name.size > 10
	end

	def self.all_long_name
		self.all.select do |user|
			user.has_long_name?
		end
	end
end
