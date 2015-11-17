class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :allergies
	has_many :allergychoices, through: :allergies
	has_many :diets
	has_many :dietchoices, through: :diets
end
