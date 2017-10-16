class CreateFriendrequests < ActiveRecord::Migration[5.1]
  def change
    create_table :friendrequests do |t|
      t.integer :user_id
      t.integer :usersend_id

      t.timestamps
    end
  end
end
