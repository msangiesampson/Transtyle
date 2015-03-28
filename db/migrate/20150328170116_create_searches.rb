class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.references :shape, index: true, foreign_key: true
      t.references :colour
      t.references :garment, index: true, foreign_key: true
      t.references :occasion, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
