class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.string :supplier
      t.integer :sold_count
      t.integer :sales_goal
      t.string :remaining_items

      t.timestamps
    end
  end
end
