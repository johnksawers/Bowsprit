Repartee::Application.routes.draw do
    authenticated :user do
        root :to => 'dashboard#index'
    end
    root :to => 'home#index'
    devise_for :users
    devise_scope :user do
        get 'sign_in', :to => 'devise/sessions#new', :as => 'sign_in'
        get 'sign_up', :to => 'devise/registrations#new', :as => 'sign_up'
        get 'sign_out', :to => 'devise/sessions#destroy', :as => 'sign_out'
    end
    #resources :users, :only => [:show, :index]

    resources :question_sets do
        resources :interviews
    end
    resources :interviews do
        resources :answers
    end
    resources :questions

    get '/pricing', :to => 'home#pricing', :as => 'pricing'
    get '/faq', :to => 'home#faq', :as => 'faq'
    get '/about', :to => 'home#about', :as => 'about'
    #match 'question_sets/:id/conduct_interview', :to => 'interviews#conduct', :as => 'conduct_interview'

end
