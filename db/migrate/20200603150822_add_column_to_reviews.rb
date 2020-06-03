class AddColumnToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :consultation_id, :integer
  end
end
