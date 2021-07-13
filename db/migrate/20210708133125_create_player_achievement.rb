class CreatePlayerAchievement < ActiveRecord::Migration[5.2]
  def change
    create_table :player_achievements do |t|
      t.references :steam_user, index: true
      t.references :achievement
      t.string :unlocktime
    end
  end
end
