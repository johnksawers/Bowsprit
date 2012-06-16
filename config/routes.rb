AskThem::Application.routes.draw do
  authenticated :user do
    root :to => 'dashboard#index'
  end
  root :to => 'home#index'
  devise_for :users
  resources :users, :only => [:show, :index]

  resources :question_sets
  resources :answers
  resources :questions


end
