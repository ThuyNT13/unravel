class User < ApplicationRecord
  has_many :rounds, foreign_key: :player_id
  # are these 2 right?
  has_many :chapters, through: :rounds
  has_many :stories, through: :rounds
  has_many :sentences, through: :chapters
end
