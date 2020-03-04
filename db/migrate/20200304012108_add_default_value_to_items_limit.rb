class AddDefaultValueToItemsLimit < ActiveRecord::Migration[6.0]
  def change
    change_column_default :users, :items_limit, from: nil, to: 50
  end
end
