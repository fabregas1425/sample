class ApplicationController < ActionController::Base
    def set_current_user
        @current_user = Login.find_by(id: session[:user_id])
      end
      
      def authenticate_user
        if @current_user == nil
          flash[:notice] = "ログインが必要です"
          redirect_to("/login")
        end
      end
end
