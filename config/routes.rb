BankingApp::Application.routes.draw do
  root to: 'home#index'
  get 'home' => 'home/index', :as => :home
  get 'home/sign_up' => 'home#sign_up', :as => :sign_up
  post 'home/create_user' => 'home#create_user', :as => :create_user
  post 'dashboard' => 'dashboard#index', :as => :dashboard

end
