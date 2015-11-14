class CreateStashes < ActiveRecord::Migration
  def change
    create_table :stashes do |t|
      t.string :image
      t.integer :width
      t.integer :height
      t.string :author
      t.integer :rows
      t.string :about

      t.timestamps null: false
    end
  end
end
