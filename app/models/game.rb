class Game < ApplicationRecord
  has_many :mods
  has_many :dlcs
end
