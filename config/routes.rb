AskThem::Application.routes.draw do
    authenticated :user do
        root :to => 'dashboard#index'
    end
    root :to => 'home#index'
    devise_for :users
    resources :users, :only => [:show, :index]

    resources :question_sets do
        resources :interviews
    end
    resources :answers
    resources :questions

    #match 'question_sets/:id/conduct_interview', :to => 'interviews#new', :as => 'conduct_interview'

end
