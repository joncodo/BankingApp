BankingApp::Application.routes.draw do
  get "upload/upload"
  root to: 'home#index'
  get 'dashboard' => 'dashboard#index', :as => :dashboard
  get 'home' => 'home/index', :as => :home
  get 'home/sign_up' => 'home#sign_up', :as => :sign_up
  post 'home/create_user' => 'home#create_user', :as => :create_user
  get 'upload/index'
  post 'upload/upload' => 'upload#upload', :as => :upload
end
