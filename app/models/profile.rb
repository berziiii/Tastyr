class Profile < ActiveRecord::Base
	belongs_to :user
	has_many :diet
	has_many :allergy

end
