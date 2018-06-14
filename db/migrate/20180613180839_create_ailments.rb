class CreateAilments < ActiveRecord::Migration[5.2]
  def change
    create_table :ailments do |t|
      t.string :code, null: false
      t.string :description, null: false

      t.timestamps
    end
    add_index :ailments, :code, unique: true
    add_index :ailments, :description, unique: true
  end
end
