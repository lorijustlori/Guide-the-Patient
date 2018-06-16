class Remedy < ApplicationRecord
  validates :code, :description, presence: true, uniqueness: true
  has_many :actions
  has_many :diagnoses
  has_many :ailments, through: :diagnoses

  def option_display
    ["#{code} - #{description}", id]
  end
end
