class CreateTagProductMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :tag_product_maps do |t|
      t.references :tag, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
