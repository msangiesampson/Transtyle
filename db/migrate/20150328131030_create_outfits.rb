class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.references :shape, index: true, foreign_key: true
      t.references :colour, index: true, foreign_key: true
      t.references :garment, index: true, foreign_key: true
      t.references :occasion, index: true, foreign_key: true
      t.string :name
      t.string :description
      t.string :image

      t.timestamps null: false
    end
  end
end
