Rails.application.routes.draw do
  root 'creatives#index'
  get '/thankyou', to: 'creatives#thankyou'
end
