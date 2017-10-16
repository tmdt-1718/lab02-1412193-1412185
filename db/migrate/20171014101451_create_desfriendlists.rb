class CreateDesfriendlists < ActiveRecord::Migration[5.1]
  def change
    create_table :desfriendlists do |t|
      t.integer :user_id
      t.integer :friendlist_id

      t.timestamps
    end
  end
end
