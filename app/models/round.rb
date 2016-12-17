class Round < ApplicationRecord
  belongs_to :player, class_name: :User
  belongs_to :sentence

  has_one :chapter, through: :sentence
  has_one :story, through: :sentence
end
