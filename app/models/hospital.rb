class Hospital < ApplicationRecord
	has_many :physicians

	validates :name, presense: true 
					 :null => false
	validates :address, uniqueness: { scope: :state }
end


