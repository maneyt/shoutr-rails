class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    @image_subject = ImageSubject.new
    @timeline = current_user.timeline.order("created_at DESC").page(params[:page]).per(10)
  end
end
