class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :title
      t.decimal :price
      t.text :content
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
