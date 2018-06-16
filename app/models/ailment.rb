class Ailment < ApplicationRecord
  validates :code, :description, presence: true, uniqueness: true

  has_many :diagnoses
  has_many :remedies, through: :diagnoses
end

  def option_display
    ["#{code} - #{description}", id]
  end
end
