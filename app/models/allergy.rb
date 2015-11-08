class Allergy < ActiveRecord::Base
	belongs_to :profile
	belongs_to :allergychoice
end
