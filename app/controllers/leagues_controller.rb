class LeaguesController < ApplicationController
  skip_before_action :authenticate_user!, only: :new

  def new
    @user = current_user
    @league = League.new
  end

end
