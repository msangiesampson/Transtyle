class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :name
      t.string :part
      t.string :description

      t.timestamps null: false
    end
  end
end
