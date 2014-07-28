class AddUfcIdToPredictions < ActiveRecord::Migration
  def change
    add_column :predictions, :ufc_id, :integer
  end
end
