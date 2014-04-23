Donation::Application.routes.draw do
  root to: "devise/registrations#new"
  devise_for :users
  resources :users
  resources :companies
end
