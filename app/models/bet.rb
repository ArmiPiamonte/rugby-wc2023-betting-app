class Bet < ApplicationRecord
  belongs_to :user
  belongs_to :match, optional: true

  def user_score
    @user_score = 0
    match = self.match
    result = Result.where(match: match)

    if match.result.present?

      if self.winning_team == match.result.winner.country
        @user_score += 5
      elsif self.difference == match.result.winning_score
        @user_score += 20
      end

      @user_score

    else
      0
    end
  end

end
