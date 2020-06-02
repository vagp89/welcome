class Review < ApplicationRecord
  belongs_to :consultation, through: :users, dependent: :destroy
end
