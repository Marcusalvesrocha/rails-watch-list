class Movie < ApplicationRecord
  validates :title, uniqueness: true, presence: true
  validates :overview, presence: true

  has_one_attached :poster
  has_many :bookmarks
  has_many :movies, through: :bookmarks
end
