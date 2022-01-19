Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :categories, only: %i[show index]
  resources :products, only: %i[show index]
  resources :products, only: [] do
    member do
      patch :change_color
    end
  end
end
