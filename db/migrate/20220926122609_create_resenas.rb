class CreateResenas < ActiveRecord::Migration[6.0]
  def change
    create_table :resenas do |t|
      t.string :name
      t.float :stars
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
