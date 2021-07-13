class SteamUser < ApplicationRecord
  has_many :game_plays
  has_many :player_achievements
  has_many :friends
end
