class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string :medical_record_number, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :phone, null: false
      t.string :email, null: false
      t.timestamps
    end
    add_index :patients, :medical_record_number, unique: true
    add_index :patients, :email, unique: true
  end
end
