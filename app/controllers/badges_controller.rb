class BadgesController < ApplicationController

  def create
    @badge = Badge.new(badge_params)
    if @badge.save
      render json: @badge
    else
      render json: @badge.errors.full_messages
    end
  end

  def update
    @badge = Badge.find(params[:id])
    @badge.votes += 1 if badge_params[:vote_type] == "up"
    @badge.votes -= 1 if badge_params[:vote_type] == "down"
    @badge.save
    render json: @badge
  end

  private

  def badge_params
    params.require(:badge).permit(:phrase, :vote_type, :teacher_id)
  end

end
