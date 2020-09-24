class HomeController < ApplicationController
  skip_before_action :authenticate_user, only: :index
  


  def index
    @users=Login.all
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end
end
