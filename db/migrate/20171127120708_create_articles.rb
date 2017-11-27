class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :strint
      t.text :text
      t.string :category
      t.string :image
      t.string :tag

      t.timestamps
    end
  end
end
