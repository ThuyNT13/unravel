class Chapter < ApplicationRecord
  belongs_to :story
  has_many :sentences
  has_many :rounds
  has_many :players, through: :rounds
end
