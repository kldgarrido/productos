class CreateProductToCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :product_to_categories do |t|
      t.belongs_to :category, index: true, foreign_key: true
      t.belongs_to :product, index: true, foreign_key: true

      t.timestamps
    end
  end
end
