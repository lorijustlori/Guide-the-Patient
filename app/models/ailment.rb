class Ailment < ApplicationRecord
  validates :code, :description, presence: true, uniqueness: true

  def option_display
    ["#{code} - #{description}", id]
  end
end
