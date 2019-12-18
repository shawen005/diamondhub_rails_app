Rails.application.routes.draw do
  

  resources :investments do

  resources :withdrawals
  
  end

  resources :topics, only: [:index, :show]
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  get 'rent', to: 'listings#rent'
  get 'buy', to: 'listings#buy'
  get 'property', to: 'listings#property'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'agents/:id', to: 'users#show', as: 'user_show'
  get 'about', to: 'pages#about'
  get 'agent', to: 'users#agent'
  get 'withdrawals', to: 'withdrawals#index'
  get 'contact', to: 'pages#contact'
  get 'terms', to: 'pages#terms'
  get 'faq', to: 'pages#faq'
  get 'dashboards', to: 'dashboard#index'
  resources :blogs do
    member do
      get :toggle_status
    end
  end
   mount ActionCable.server => '/cable'

root  to: 'pages#home' , as: 'home'
end