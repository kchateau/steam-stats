class CreateSteamUser < ActiveRecord::Migration[5.2]
  def change
    create_table :steam_users do |t|
      t.string :steam_id, unique: true
    end
  end
end
