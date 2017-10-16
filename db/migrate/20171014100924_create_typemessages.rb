class CreateTypemessages < ActiveRecord::Migration[5.1]
  def change
    create_table :typemessages do |t|
      t.text :content

      t.timestamps
    end
  end
end
