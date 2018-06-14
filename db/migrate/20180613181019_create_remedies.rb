class CreateRemedies < ActiveRecord::Migration[5.2]
  def change
    create_table :remedies do |t|
      t.string :code, null: false
      t.string :description, null: false

      t.timestamps
    end
    add_index :remedies, :code, unique: true
    add_index :remedies, :description, unique: true
  end
end
