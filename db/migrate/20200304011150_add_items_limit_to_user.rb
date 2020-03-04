class AddItemsLimitToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :items_limit, :integer, default: 50
  end
end
