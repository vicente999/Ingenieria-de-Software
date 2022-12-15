class AddStatsToPublications < ActiveRecord::Migration[6.0]
  def change
    add_column :publications, :fecha, :date
  end
end
