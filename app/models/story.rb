class Story < ApplicationRecord
  has_many :chapters
  has_many :sentences, through: :chapters
  has_many :rounds, through: :chapters
  has_many :players, through: :rounds
end
