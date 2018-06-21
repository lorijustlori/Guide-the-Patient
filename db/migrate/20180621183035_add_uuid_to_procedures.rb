class AddUuidToProcedures < ActiveRecord::Migration[5.2]
  def change
    add_column :procedures, :uuid, :string, null: false
    add_index :procedures, :uuid, unique: true
  end
end
