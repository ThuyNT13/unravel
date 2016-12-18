class Sentence < ApplicationRecord
  belongs_to :chapter
  has_one :story, through: :chapter
  has_many :rounds, through: :chapter
  has_many :players, through: :rounds
end
