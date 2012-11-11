Wannaknow::Application.routes.draw do

  resources :user_projects

  resources :projects

  authenticated :user do
    root :to => 'home#index'
  end
  devise_scope :user do 
    root :to => "registrations#new"
    match '/user/confirmation' => 'confirmations#update', :via => :put, :as => :update_user_confirmation
  end
  devise_for :users, :controllers => { :confirmations => "confirmations" }
  match 'users/bulk_invite/:quantity' => 'users#bulk_invite', :via => :get, :as => :bulk_invite
  resources :users, :only => [:show, :index] do
    resources :projects do
    end  
    get 'invite', :on => :member
  end
end