class AddFullNameToDonations < ActiveRecord::Migration[6.0]
  def change
    add_column :donations, :full_name, :string
  end
end
