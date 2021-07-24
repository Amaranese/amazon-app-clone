class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :tytle
      t.string :description
      t.string :site_key
      t.references :user, foreign_key: true, type:integer
      t.timestamps
    end
  end
end
