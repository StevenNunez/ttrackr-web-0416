Rails.application.routes.draw do
  get 'home/index'

  root "home#index"
  # get '/', to: "home#index"
  resources :shirts
end
