Rails.application.routes.draw do
  # Add your routes here
  root 'welcome#home'
  get '/app/:provider/callback', to: 'sessions#create'
  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
end
