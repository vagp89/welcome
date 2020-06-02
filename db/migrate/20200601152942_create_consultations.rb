class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |t|
      t.datetime :date
      t.references :asker, foreign_key: { to_table: :users }
      t.references :mentor, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
