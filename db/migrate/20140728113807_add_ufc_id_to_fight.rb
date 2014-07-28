class AddUfcIdToFight < ActiveRecord::Migration
  def change
    add_column :fights, :ufc_id, :integer
  end
end
