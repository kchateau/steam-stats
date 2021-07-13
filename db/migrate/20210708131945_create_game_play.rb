class CreateGamePlay < ActiveRecord::Migration[5.2]
  def change
    create_table :game_plays do |t|
      t.references :steam_user, index: true
      t.references :game, index: true
      t.integer :playtime_forever
      t.integer :playtime_2weeks
      t.integer :playtime_windows_forever
      t.integer :playtime_mac_forever
      t.integer :playtime_linux_forever
    end
  end
end
