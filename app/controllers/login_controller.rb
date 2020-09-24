class LoginController < ApplicationController
  skip_before_action :authenticate_user, only: :login_page
  skip_before_action :authenticate_user, only: :login


  def login_page
  end

  def login
    @user=Login.find_by(email:params[:email],password:params[:password])
    if @user
      session[:user_id]=@user.id
      flash[:notice]="ログインしました"
      redirect_to("/")
    else
      flash[:notice]="メールアドレスかパスワードが間違っています"
      @email=params[:email]
      @password=params[:password]
      render("login/login_page")
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/login")
  end

  def authenticate_user
    if @current_user == nil
      flash[:notice] = "ログインが必要です"
      redirect_to("/login")
    end
  end
end
