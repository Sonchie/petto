class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :img_url
      t.string :category
      t.string :breed
      t.string :gender
      t.string :description
      t.decimal :price
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
