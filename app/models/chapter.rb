class Chapter < ApplicationRecord
  belongs_to :story
  has_many :sentences

  has_many :rounds, through: :sentences
  has_many :players, through: :rounds
end
