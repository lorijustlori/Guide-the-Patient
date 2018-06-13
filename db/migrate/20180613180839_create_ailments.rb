class CreateAilments < ActiveRecord::Migration[5.2]
  def change
    create_table :ailments do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
