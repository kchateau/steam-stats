class AddSteamIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :steam_id, :string
    add_column :users, :string, :string
  end
end
