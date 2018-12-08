Rails.application.routes.draw do
  resources :newsletters, only: [:create]
  root to: 'newsletters#index'
end
