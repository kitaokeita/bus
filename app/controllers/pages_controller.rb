class PagesController < ApplicationController
	 before_action :sign_in_required, only: [:show]
  def index
  end

  def show
  	  @feed_items = current_user.feed.paginate(page: params[:page])
  	  
  end
end
