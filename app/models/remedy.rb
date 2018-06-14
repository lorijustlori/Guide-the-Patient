class Remedy < ApplicationRecord
  belongs_to :hospital
  validates :code, :description, presence: true, uniqueness: true
end
