class Patient < ApplicationRecord
	validates :medical_record_number, :email, presence: true, uniqueness: true
  validates :first_name, :last_name, :address, :city, :state, :phone, presence: true
end
