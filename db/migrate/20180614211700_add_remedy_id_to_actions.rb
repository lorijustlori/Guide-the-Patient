class AddRemedyIdToActions < ActiveRecord::Migration[5.2]
  def change
    add_reference :actions, :remedy, foreign_key: true
  end
end
