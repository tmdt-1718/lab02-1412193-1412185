class AddstatustoFriendrequest < ActiveRecord::Migration[5.1]
  def change
    add_column :friendrequests, :status, :boolean, default: false
  end
end
