class Allergychoice < ActiveRecord::Base
	has_many :allergies
	has_many :profiles, through: :allergies
end
