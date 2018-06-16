class AddColumnsToProcedure < ActiveRecord::Migration[5.2]
  def change
    add_column :procedures, :date, :date
    add_column :procedures, :start_time, :time
    add_column :procedures, :end_time, :time
  end
end
