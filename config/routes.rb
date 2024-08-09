Rails.application.routes.draw do
  devise_for :users
  root 'places#home'

  resources :places, only: [:index, :show]
  resources :reports

  get "/map", to: "places#index"
  get "/report", to: "places#report"
  get "/history", to: "places#history"
end
