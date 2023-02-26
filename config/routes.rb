Rails.application.routes.draw do
  devise_for :users

  root 'users#home'
  resources :users, only: [:home]
  resources :groups, only: [:index, :new, :create, :edit, :update, :destroy], :path => "categories" do 
    resources :expenses, only: [:index, :new, :create, :edit, :update, :destroy], :path => "transactions"
  end
end
