class AddAuthorFlagToUser < ActiveRecord::Migration[5.1]
  def change
	   add_column :users, :author, :boolean, default: false, null: false
  end
end
