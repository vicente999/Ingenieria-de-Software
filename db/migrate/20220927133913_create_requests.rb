class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :name
      t.date :date
      t.string :user
      t.timestamps
  
    end
  end
end
