class Diagnosis < ApplicationRecord
  belongs_to :ailment
  belongs_to :procedure
end
