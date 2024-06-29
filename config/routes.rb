Rails.application.routes.draw do
  get 'users/index'
  resources :sample_articles
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
