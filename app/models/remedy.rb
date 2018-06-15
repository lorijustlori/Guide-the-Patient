class Remedy < ApplicationRecord
  validates :code, :description, presence: true, uniqueness: true
  has_many :actions

  def option_display
    ["#{code} - #{description}", id]
  end
end
