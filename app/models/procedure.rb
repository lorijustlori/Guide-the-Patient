class Procedure < ApplicationRecord
  belongs_to :patient
  belongs_to :diagnosis
  belongs_to :physician
end
