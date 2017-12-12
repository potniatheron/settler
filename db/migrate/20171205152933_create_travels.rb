class CreateTravels < ActiveRecord::Migration[5.1]
  def change
    create_table :travels do |t|
      t.string :name
      t.text :description
      t.string :image_url
      t.integer :price

      t.timestamps
    end
  end
end
