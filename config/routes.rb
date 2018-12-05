Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  root to: 'pages#home'

  get 'home', to: 'pages#home', as: :home
  get 'about', to: 'pages#about', as: :about
  get 'cv', to: 'pages#cv', as: :cv

  resources :stories
  resources :projects
  resources :publications
end
