class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.string :ufc
      t.string :fighter_one_name
      t.string :fighter_one_image
      t.string :fighter_two_name
      t.string :fighter_two_image

      t.timestamps
    end
  end
end
