Rails.application.routes.draw do
  root 'places#index'

  resources :places, only: [:index, :show]

  get "/map", to: "places#index"
  get "/report", to: "places#report"
  get "/timeline", to: "places#timeline"
end
