class AddPublicationIdToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :publication_id, :integer
    add_index :requests, :publication_id
  end
end
