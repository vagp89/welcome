class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rating
      t.references :asker, foreign_key: { to_table: :consultations }
      t.timestamps
    end
  end
end
