class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :team_1, null: false, foreign_key:{ to_table: :teams }
      t.references :team_2, null: false, foreign_key: { to_table: :teams }
      t.date :date
      t.string :pool
      t.timestamps
    end
  end
end
