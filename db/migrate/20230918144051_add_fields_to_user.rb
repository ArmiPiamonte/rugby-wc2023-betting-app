class AddFieldsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :points, :integer
    add_column :users, :league, :string
  end
end
