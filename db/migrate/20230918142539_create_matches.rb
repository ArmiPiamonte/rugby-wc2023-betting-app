class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :winner, null: false, foreign_key: true
      t.references :loser, null: false, foreign_key: true
      t.references :away_team, null: false, foreign_key: { to_table: :teams }
      t.references :home_team, null: false, foreign_key: { to_table: :teams }
      t.date :date
      t.string :pool
      t.timestamps
    end
  end
end
