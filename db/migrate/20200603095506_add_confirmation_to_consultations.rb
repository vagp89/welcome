class AddConfirmationToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_column :consultations, :confirmation, :string, default: "pending"
  end
end
