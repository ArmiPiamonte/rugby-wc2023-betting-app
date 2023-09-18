class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :country
      t.string :flag
      t.integer :ranking

      t.timestamps
    end
  end
end
