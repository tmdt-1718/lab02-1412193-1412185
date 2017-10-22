class AddusersendToMessage < ActiveRecord::Migration[5.1]
  def change
  	    add_column :messages, :usersend_id, :integer
  end
end
