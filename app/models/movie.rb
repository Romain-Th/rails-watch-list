class Movie < ApplicationRecord
  # has many bookmarks et should not be able to destroy self if has bookmarks children
  has_many :bookmarks
  # title is unique et title cannot be blank
  validates :title, uniqueness: true, presence: true
  # overview cannot be blank
  validates :overview, presence: true
end
