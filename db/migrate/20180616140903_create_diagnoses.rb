class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.references :remedy, foreign_key: true
      t.references :ailment, foreign_key: true

      t.timestamps
    end
  end
end
