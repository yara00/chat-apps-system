Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Application routes

  scope '/applications' do
    get '', to: 'applications#index'
    get '/:application_token', to: 'applications#show'
    post '', to: 'applications#create'
    patch '/:application_token', to: 'applications#update'

    scope '/:application_token/chats' do 
      get '', to: 'chats#index'
      get '/:chat_number', to: 'chats#show'
      post '', to: 'chats#create'
        
      scope '/:chat_number/messages' do
        get '', to: 'messages#index'
        get '/:message_number', to: 'messages#show'
        post '', to: 'messages#create'
        post 'search', to: 'messages#search'
        patch '/:message_number', to: 'messages#update'
      end
    end
  end
end
