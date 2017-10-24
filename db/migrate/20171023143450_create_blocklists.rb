class CreateBlocklists < ActiveRecord::Migration[5.1]
  def change
    create_table :blocklists do |t|
      t.integer :user_id
      t.integer :userblock_id

      t.timestamps
    end
  end
end
