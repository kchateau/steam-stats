class PlayerAchievement < ApplicationRecord
  belongs_to :steam_user, :class_name => 'SteamUser', :foreign_key => 'steam_user_id'
  belongs_user :achievement, :class_name => 'Achievement', :foreign_key => 'achievement_id'
end
