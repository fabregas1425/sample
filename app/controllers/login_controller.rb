class LoginController < ApplicationController
  skip_before_action :authenticate_user, only: [:login_page, :login]
  


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

  
  
end
