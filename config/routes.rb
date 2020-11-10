Rails.application.routes.draw do
  devise_for :users
  resources :portfolio_pieces, except: [:show, :index, :new]
  get 'java-items', to: 'portfolio_pieces#java'
  get 'project/:id', to: 'portfolio_pieces#show', as: 'portfolio_pieces_show'
  get 'projects', to: 'portfolio_pieces#index'
  get 'projects/new', to: 'portfolio_pieces#new', as: 'new_portfolio_piece'

  get 'pages/home'

  #instead of get 'pages/about' we can do
  get 'about', to: 'pages#about' # visit via url/about
  get 'contact', to: 'pages#contact'

  

  resources :blogs do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Redict site by default to pages/home
  root to: 'pages#home'
end
