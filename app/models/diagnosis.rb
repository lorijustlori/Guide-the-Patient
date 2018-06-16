class Diagnosis < ApplicationRecord
  belongs_to :remedy
  belongs_to :ailment
end
