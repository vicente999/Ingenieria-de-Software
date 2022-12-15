class CreateChats < ActiveRecord::Migration[6.0]
  def change
    create_table :chats do |t|
      t.string :usuario
      t.text :mensaje

      t.timestamps
    end
  end
end
