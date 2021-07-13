class GamePlay < ApplicationRecord
  belongs_to :steam_user, :class_name => 'SteamUser', :foreign_key => 'steam_user_id'
  belongs_to :game, :class_name => 'Game', :foreign_key => 'game_id'
end
