class Friend < ApplicationRecord
  belongs_to :steam_user, :class_name => 'SteamUser', :foreign_key => 'steam_user_id'
  belongs_to :friend, :class_name => 'SteamUser', :foreign_key => 'friend_id'
end
