class DashboardController < ApplicationController
  #before_filter :authenticate_user!, :only => :index

  def index
    @user = current_user
  end
  def public
    if user_signed_in?
      render index
    else
      render public
    end
  end
end

