class BadgesController < ApplicationController

  def create
    @badge = Badge.new(badge_params)
    if @badge.save
      render json: @badge
    else
      render json @badge.errors.full_messages
    end
  end

  private

  def badge_params
    params.require(:badge).permit(:phrase, :vote_type, :teacher_id)
  end

end
