class Dietchoice < ActiveRecord::Base
	has_many :diets
	has_many :profiles, through: :diets
end
