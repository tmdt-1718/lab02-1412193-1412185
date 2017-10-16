class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.text :title
      t.text :content
      t.integer :user_id
      t.integer :typemessage_id

      t.timestamps
    end
  end
end
