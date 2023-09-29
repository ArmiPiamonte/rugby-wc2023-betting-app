class BetsController < ApplicationController
  before_action :set_match, only: %i[new create show]

  def new
    @bet = Bet.new
    @league = League.new
  end

  def show
    @bet = Bet.find(params[:id])
  end

  def create
    @user = current_user
    @bet = Bet.new
    @bet.match = @match
    @bet.user = @user
    @bet.save!
    redirect_to match_bet_path(@match, @bet)
  end

  def update
    @user = current_user
    @bet = Bet.find(params[:id])
    @bet.update(params_bet)
    @bet.save!
    redirect_to match_bet_path(@match, @bet)
  end

  private

  def params_bet
    params.require(:bets).permit(:difference, :winning_team)
  end

  def set_match
    @match = Match.find(params[:match_id])
  end
end
