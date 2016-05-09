Rails.application.routes.draw do
  root "home#index"
  # get '/', to: "home#index"
  resources :shirts
  get 'sign-in', to: "sessions#new"
  post 'sign-in', to: "sessions#create"
end
