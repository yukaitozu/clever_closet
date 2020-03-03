class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :size
      t.string :location
      t.boolean :donated
      t.boolean :lent
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
