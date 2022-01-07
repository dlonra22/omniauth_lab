Rails.application.routes.draw do
  
  root 'welcome#home'
  #match "/auth/#{:provider}/callback", to: 'sessions#create', via: [:get, :post]
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :welcome, only: [:home]
end
