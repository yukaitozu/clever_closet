class AddItemToMessages < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :item, foreign_key: true
  end
end
