class AddFightToPredictions < ActiveRecord::Migration
  def change
    add_reference :predictions, :fight, index: true
  end
end
