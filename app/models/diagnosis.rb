class Diagnosis < ApplicationRecord
  belongs_to :remedy
  belongs_to :ailment
  has_many :procedures
end
