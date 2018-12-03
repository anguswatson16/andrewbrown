Rails.application.routes.draw do
  root to: 'pages#home'

  get 'home', to: 'pages#home', as: :home
end
