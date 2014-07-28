class RemoveFightIdFromPredictons < ActiveRecord::Migration
  def change
    remove_column :predictions, :fight_id, :integer
  end
end
