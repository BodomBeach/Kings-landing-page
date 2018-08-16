  Rails.application.routes.draw do
  root 'creatives#index'
  get '/thankyou', to: 'creatives#thankyou'
  get '/index2', to: 'creatives#index2'
  get '/index3', to: 'creatives#index3'
  post '/index', to: 'users#create', as: 'form'
end

