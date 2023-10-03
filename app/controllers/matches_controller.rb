class MatchesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @matches_by_date = Match.all.group_by { |match| match.date }
    @bet = Bet.new
    @bets = Bet.all.group_by { |bet| bet.user }
  end
end
