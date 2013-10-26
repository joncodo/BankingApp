BankingApp::Application.routes.draw do
  root to: 'home#index'
  get 'dashboard' => 'dashboard#index', :as => :dashboard
  get 'home' => 'home/index', :as => :home
  get 'home/sign_up' => 'home#sign_up', :as => :sign_up
end
