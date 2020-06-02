class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :content
      t.references :comment_author, foreign_key: { to_table: :users }
      t.references :comment_article, foreign_key: { to_table: :articles }
      t.timestamps
    end
  end
end
