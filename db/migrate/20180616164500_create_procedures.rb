class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.references :patient, foreign_key: true
      t.references :physician, foreign_key: true
      t.references :remedy, foreign_key: true
      t.datetime :start_at, null: false
      t.timestamps
    end
  end
end
