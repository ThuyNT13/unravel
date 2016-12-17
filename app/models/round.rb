class Round < ApplicationRecord
  belongs_to :player, class_name: :User
  belongs_to :chapter
  has_many :sentences, through: :chapter
  has_one :story, through: :chapter
end
