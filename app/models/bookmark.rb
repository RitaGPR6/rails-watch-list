class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, :list_id, presence: true
  validates :movie, :list, uniqueness: { scope: %i[movie_id list_id] }
end
