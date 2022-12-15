class AddPublicationIdToResenas < ActiveRecord::Migration[6.0]
  def change
    add_reference :resenas, :publication, null: false, foreign_key: true
  end
end
