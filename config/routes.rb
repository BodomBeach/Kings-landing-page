  Rails.application.routes.draw do
  root 'creatives#index'
  get '/thankyou', to: 'creatives#thankyou'
  get '/index1', to: 'users#new'
  get '/index2', to: 'cratives#index2'
  get '/index3', to: 'users#new'
  post '/index', to: 'users#create', as: 'form'
end

