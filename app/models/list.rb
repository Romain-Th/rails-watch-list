class List < ApplicationRecord
  # has many bookmarks
  has_many :bookmarks
  # has many movies
  # should destroy child saved movies when destroying self
  has_many :movies, through: :bookmarks, dependent: :destroy
  # name cannot be blank et name is unique
  validates :name, presence: true, uniqueness: true
end
