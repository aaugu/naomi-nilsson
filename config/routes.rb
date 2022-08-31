Rails.application.routes.draw do
  devise_for :users
  get 'dashboard', to: 'dashboard#index', as: :dashboard
  get 'dashboard', to: 'dashboard#index', as: :user_root

	root to: 'pages#home'
	get 'about', to: 'pages#about'
	get 'contact', to: 'pages#contact'
  get 'informations', to: 'pages#informations'
  resources :posts, only:[:show, :new, :create, :edit, :update, :destroy]
  resources :informations, only:[:edit, :update]
end
