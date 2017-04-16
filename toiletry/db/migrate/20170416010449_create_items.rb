class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :brand_id
      t.integer :collection_id
      t.string :name
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
