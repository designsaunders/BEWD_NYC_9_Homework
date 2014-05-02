class User < ActiveRecord::Base
	validates :username, :presence => true
	validates :username, :length => { :in => 2..10}
	validate :under_aged
	has_many :shouts
	
	def under_aged
		errors.add(:base, "Sorry, you are under_aged.") if age < 21
end
end
