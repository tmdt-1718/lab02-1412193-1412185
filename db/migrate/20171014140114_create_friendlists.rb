class CreateFriendlists < ActiveRecord::Migration[5.1]
  def change
    create_table :friendlists do |t|

      t.timestamps
    end
  end
end
