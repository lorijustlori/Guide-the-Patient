class Physician < ApplicationRecord
	belongs_to :hospital
	validates :first_name, :last_name, :null => false
										presence: true
end
