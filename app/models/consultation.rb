class Consultation < ApplicationRecord
  belongs_to :asker, class_name: "User"
  # belongs_to :mentor, class_name: "User"
  has_many :reviews, dependent: :destroy
end
