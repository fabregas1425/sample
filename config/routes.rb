Rails.application.routes.draw do
  get 'login/login'
  root to: 'home#index'

  get "/login" => "login#login"
end
