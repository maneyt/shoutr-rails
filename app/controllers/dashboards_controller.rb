class DashboardsController < ApplicationController
  def show
    @shout = Shout.new
    #shouts = current_user.followed_shouts + current_user.shouts
    #shouts = shouts.sort_by {|s| s.created_at }
    #@shouts = shouts.reverse
  end
end
