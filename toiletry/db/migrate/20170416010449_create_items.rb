class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.integer :collection_id
      t.integer :user_id
      t.string :name
      t.string :brand
      t.string :description
      t.decimal :cost

      t.timestamps
    end
  end
end
