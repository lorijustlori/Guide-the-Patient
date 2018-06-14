class Hospital < ApplicationRecord
  has_many :physicians

  validates :name, :address, :city, :state, presence: true
end