class AddExpertiseToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :expertise, :string
  end
end
