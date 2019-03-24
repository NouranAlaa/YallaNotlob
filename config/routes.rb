Rails.application.routes.draw do
  devise_for :users , controllers: { registrations: 'registrations'} 
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end
  get 'welcome/showFriends'
  # root 'welcome#showFriends'
  resources :orders

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


