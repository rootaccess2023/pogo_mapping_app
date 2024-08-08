Rails.application.routes.draw do
  root 'places#home'

  resources :places, only: [:index, :show]

  get "/map", to: "places#index"
  get "/report", to: "places#report"
  get "/timeline", to: "places#timeline"
end
