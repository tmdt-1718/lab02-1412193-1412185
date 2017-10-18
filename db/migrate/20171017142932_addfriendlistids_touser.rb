class AddfriendlistidsTouser < ActiveRecord::Migration[5.1]
  def change
    add_column :friendlists, :user_id, :integer
  end
end
