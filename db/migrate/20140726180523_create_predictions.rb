class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.integer :fight_id
      t.string :ufc
      t.string :fighter
      t.string :how
      t.string :when

      t.timestamps
    end
  end
end
