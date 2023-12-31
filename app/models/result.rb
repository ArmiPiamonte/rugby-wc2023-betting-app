class Result < ApplicationRecord
  belongs_to :match
  belongs_to :winner, class_name: 'Team', foreign_key: 'winner_id'
  belongs_to :loser, class_name: 'Team', foreign_key: 'loser_id'
end
