Rails.application.routes.draw do
  root to: 'home#index'

  get "/login" => "login#login_page"
  post "/login" => "login#login"

  post "/logout" => "login#logout"
end
