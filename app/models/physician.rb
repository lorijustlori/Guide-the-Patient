class Physician < ApplicationRecord
  belongs_to :hospital
  has_many :procedures
  validates :first_name, :last_name, presence: true

  def option_display
    ["#{first_name} #{last_name}", id]
  end
end
