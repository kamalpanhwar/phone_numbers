Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get '/phonenumber/:id', to: 'phones#show'
    end
  end
end

