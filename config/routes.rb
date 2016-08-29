Rails.application.routes.draw do
  get 'sheets/callback'
  post 'sheets/create'
  resources :sheets
  get 'welcome/index'
  root 'sheets#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
