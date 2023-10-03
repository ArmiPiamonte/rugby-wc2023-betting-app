class BetsController < ApplicationController
  before_action :set_match, only: %i[index new create edit update]

  def index
    @bets = Bet.all .where(match: @match).sort_by { |bet| -bet.user_score}
  end

  def new
    @bet = Bet.new
    @match_teams = [@match.team_1, @match.team_2]
  end

  def edit
    @match_teams = [@match.team_1, @match.team_2]
    @user = current_user
    @bet = Bet.find(params[:id])
  end

  def create
    @user = current_user
    @bet = Bet.new(params_bet)
    @bet.match = @match
    @bet.user = @user
    @bet.save!
    redirect_to match_bets_path(@match)
  end

  def update
    @match_teams = [@match.team_1, @match.team_2]
    @user = current_user
    @bet = Bet.find(params[:id])
    @bet.update(params_bet)
    @bet.save!
    redirect_to match_bets_path(@match)
  end

  private

  def params_bet
    params.require(:bet).permit(:difference, :winning_team)
  end

  def set_match
    @match = Match.find(params[:match_id])
  end
end
