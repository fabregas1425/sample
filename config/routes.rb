Rails.application.routes.draw do
  root to: 'home#index'

  get "/login" => "login#login"
end
