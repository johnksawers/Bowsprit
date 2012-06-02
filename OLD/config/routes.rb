AskThem::Application.routes.draw do
  root :to => "dashboard#index"

  resources :interviews
  resources :answers
  resources :questions

  devise_for :users
  resources :users, :only => :show

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id(.:format)))'
end
