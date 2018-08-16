Rails.application.routes.draw do
  root 'creatives#index'
  get 'creatives#index', to: 'users#new', as: 'form'
  get '/thankyou', to: 'creatives#thankyou'
  post 'creatives#index', to: 'users#create'

end
