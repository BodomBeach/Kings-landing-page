Rails.application.routes.draw do
  root 'users#new'
  get '/thankyou', to: 'users#thankyou'
  post 'users#new', to: 'users#create'
end
