class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.references :patient, foreign_key: true
      t.references :diagnosis, foreign_key: true
      t.references :physician, foreign_key: true

      t.timestamps
    end
  end
end
