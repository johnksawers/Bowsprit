Bowsprit::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    root :to => 'home#index'
    devise_for :users
    devise_scope :user do
        get 'sign_in', :to => 'devise/sessions#new', :as => 'sign_in'
        get 'sign_up', :to => 'devise/registrations#new', :as => 'sign_up'
        get 'sign_out', :to => 'devise/sessions#destroy', :as => 'sign_out'
    end
    #resources :users, :only => [:show, :index]

    resources :scripts do
        resources :interviews
    end
    resources :interviews do
        resources :answers
    end
    resources :questions

    get '/pricing', :to => 'home#pricing', :as => 'pricing'
    get '/faq', :to => 'home#faq', :as => 'faq'
    get '/about', :to => 'home#about', :as => 'about'
    get 'scripts/:id/conduct_interview', :to => 'interviews#new', :as => 'conduct_interview'

end
