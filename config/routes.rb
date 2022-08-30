Rails.application.routes.draw do
  root "home#index"

  resources :students, only: :show
end
