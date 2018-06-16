class Patient < ApplicationRecord
  validates :medical_record_number, :email, presence: true, uniqueness: true
  validates :first_name, :last_name, :address, :city, :state, :phone, presence: true

  has_many :procedures

  def option_display
    [
      "#{medical_record_number} - #{first_name} #{last_name}",
      id,
      {
        'data-address'  => address,
        'data-city'     => city,
        'data-state'    => state,
        'data-email'    => email,
        'data-phone'    => phone
      }
    ]
  end
end
