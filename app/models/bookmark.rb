class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # validates :movie, presence: true
  # validates :list, presence: true
  validates :list_id, uniqueness: { scope: :movie_id }
  validates :comment, length: { minimum: 6 }
end
