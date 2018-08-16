Rails.application.routes.draw do
  root 'users#new'
  post 'users/new', to: 'users#create'
end
