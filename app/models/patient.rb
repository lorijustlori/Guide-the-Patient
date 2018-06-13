class Patient < ApplicationRecord

	validates :medical_record_number, :email,   presence: true,
												uniqueness: true
												:null => false
				:first_name, :last_name, :address, :city, :state, :phone,
					:null => false									
end
