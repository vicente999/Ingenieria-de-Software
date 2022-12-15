class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.string :name
      t.float :rating
      t.text :description
      t.integer :price
      t.string :category
      t.string :clasification
      t.integer :disponibility
      t.string :tipo

      t.timestamps
    end
  end
end
