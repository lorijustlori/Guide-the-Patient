class Physician < ApplicationRecord
  belongs_to :hospital
  validates :first_name, :last_name, presence: true
end
