class Ailment < ApplicationRecord
	validates :code, :description, 	presence: true,
									uniqueness: true,
									value: true
end
