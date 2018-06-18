class Procedure < ApplicationRecord
  belongs_to :patient
  belongs_to :physician
  belongs_to :remedy
  has_one :diagnosis
  has_one :ailment, through: :diagnosis
end
