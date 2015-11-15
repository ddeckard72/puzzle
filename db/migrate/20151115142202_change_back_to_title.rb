class ChangeBackToTitle < ActiveRecord::Migration
  def change
    add_column :stashes, :title, :string
  end
end
