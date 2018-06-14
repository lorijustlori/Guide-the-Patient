class Remedy < ApplicationRecord
  validates :code, :description, presence: true, uniqueness: true
  has_many :actions
end
