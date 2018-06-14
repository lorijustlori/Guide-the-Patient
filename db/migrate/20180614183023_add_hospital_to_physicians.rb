class AddHospitalToPhysicians < ActiveRecord::Migration[5.2]
  def change
    add_reference :physicians, :hospital, foreign_key: true
  end
end
