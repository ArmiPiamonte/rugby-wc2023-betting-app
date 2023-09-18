class Match < ApplicationRecord
  belongs_to :winner, class_name: 'Team', foreign_key: 'winner_id'
  belongs_to :loser, class_name: 'Team', foreign_key: 'loser_id'
  belongs_to :home_team, class_name: 'Team', foreign_key: 'home_team_id', optional: true
  belongs_to :away_team, class_name: 'Team', foreign_key: 'away_team_id', optional: true
end
