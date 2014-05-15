AddressBook::Application.routes.draw do
  root 'contacts#index'

  devise_for :users
  resources :contacts

  get '/contacts/:id/email', to: 'contacts#new_email', as: 'email_contacts'
  post '/contacts/:id/email', to: 'contacts#send_email'
  get '/contacts/:id/sent', to: 'contacts#sent_email', as: 'email_sent'
  
end
