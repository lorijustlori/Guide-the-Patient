class Hospital < ApplicationRecord
	has_many :physicians

	validates :name, presence: true 
					 :null => false
	validates :address, uniqueness: { scope: :city, :state }
end


