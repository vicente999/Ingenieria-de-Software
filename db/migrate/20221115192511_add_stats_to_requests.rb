class AddStatsToRequests < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :devolucion, :boolean
  end
end
