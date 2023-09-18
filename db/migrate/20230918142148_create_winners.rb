class CreateWinners < ActiveRecord::Migration[7.0]
  def change
    create_table :winners do |t|
      t.references :team, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
