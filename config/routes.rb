Rails.application.routes.draw do
  root 'creatives#index'
  get 'creatives#index', to: 'users#new', as: 'form'
  get '/thankyou', to: 'creatives#thankyou'
  post 'creatives#index', to: 'users#create'
  get 'creatives#index2', to: 'users#new'
  get 'creatives#index3', to: 'users#new'

end
