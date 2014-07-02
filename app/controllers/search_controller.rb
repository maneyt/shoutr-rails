class SearchController < ApplicationController
  def index
    @searched_users = User.search(params[:query]) 
  end

end
