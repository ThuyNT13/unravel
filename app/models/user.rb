class User < ApplicationRecord
  has_many :rounds, foreign_key: :player_id

  has_many :sentences, through: :rounds

  has_many :chapters, through: :sentences
  has_many :stories, through: :chapters
end
