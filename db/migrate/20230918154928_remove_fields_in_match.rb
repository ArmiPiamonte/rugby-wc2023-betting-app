class RemoveFieldsInMatch < ActiveRecord::Migration[7.0]
  def change
    remove_column :matches, :away_team_id, :references
    remove_column :matches, :home_team_id, :references
  end
end
