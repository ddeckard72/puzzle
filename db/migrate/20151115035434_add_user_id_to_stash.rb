class AddUserIdToStash < ActiveRecord::Migration
  def change
  	add_column :stashes, :user_id, :integer
  end
end
