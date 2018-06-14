class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :activity
      t.integer :number
      t.string :unit
      t.string :timeline

      t.timestamps
    end
  end
end
