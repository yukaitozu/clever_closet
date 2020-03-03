class CreateItemsLooks < ActiveRecord::Migration[6.0]
  def change
    create_table :items_looks, id: false  do |t|
      t.belongs_to :item
      t.belongs_to :look
    end
  end
end
