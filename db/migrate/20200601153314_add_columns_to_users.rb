class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :price, :integer
    add_column :users, :location, :string
    add_column :users, :username, :string
  end
end
