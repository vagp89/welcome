class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :content
      t.string :title
      t.references :author, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
