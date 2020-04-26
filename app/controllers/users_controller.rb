class UsersController < ApplicationController

  def index
  end

  def scorecard

    @user = User.friendly.find(params[:id])

    if params[:scorecard].present?

      performances = params[:scorecard].permit!

      performances.each do |performance|
        Score.find(performance[0]).update_attributes({
          song: performance[1]["song"],
          outfit: performance[1]["outfit"],
          backdrop: performance[1]["backdrop"]
        })
      end

      @notice = "Scorecard saved"

    end

  end

end
