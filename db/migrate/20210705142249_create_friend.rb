class CreateFriend < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.references :steam_user, index: true
      t.references :friend, index: true, foreign_key: {to_table: :steam_users}
      t.string :friend_since
    end
  end
end
