class Diet < ActiveRecord::Base
	belongs_to :profile
	belongs_to :dietchoice
end
