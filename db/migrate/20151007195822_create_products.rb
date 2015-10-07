class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.integer :project_id

      t.timestamps
    end
    add_index :products, :project_id
  end
end
