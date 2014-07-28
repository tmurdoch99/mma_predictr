class CreateUfcs < ActiveRecord::Migration
  def change
    create_table :ufcs do |t|
      t.string :name
      t.datetime :date
      t.string :where

      t.timestamps
    end
  end
end
