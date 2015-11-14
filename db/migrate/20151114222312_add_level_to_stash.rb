class AddLevelToStash < ActiveRecord::Migration
  def change
  	add_column :stashes, :level, :string
  end
end
