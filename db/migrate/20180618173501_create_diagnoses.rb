class CreateDiagnoses < ActiveRecord::Migration[5.2]
  def change
    create_table :diagnoses do |t|
      t.belongs_to :ailment, foreign_key: true
      t.belongs_to :procedure, foreign_key: true

      t.timestamps
    end
  end
end
