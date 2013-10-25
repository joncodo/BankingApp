BankingApp::Application.routes.draw do
  root to: 'home#index'
  get 'dashboard' => 'dashboard#index', :as => :dashboard
end
