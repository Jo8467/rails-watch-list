class List < ApplicationRecord
  # Associations
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  # Validations
  validates :name, presence:true, uniqueness: true
end
