class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.integer :winning_score
      t.integer :losing_score
      t.references :winner, null: false, foreign_key: {to_table: :teams}
      t.references :loser, null: false, foreign_key: {to_table: :teams}
      t.references :match, null: false, foreign_key: true

      t.timestamps
    end
  end
end
