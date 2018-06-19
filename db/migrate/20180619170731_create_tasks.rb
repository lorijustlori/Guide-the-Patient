class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
    	t.belongs_to :action, foreign_key: true
      t.belongs_to :procedure, foreign_key: true

      t.timestamps
    end
  end
end
