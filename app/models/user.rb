class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :consultations_as_asker, source: :consultations, foreign_key: :asker_id
  has_many :consultations_as_mentor, source: :consultations, foreign_key: :mentor_id
end
