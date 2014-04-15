StackOverflow::Application.routes.draw do
  resources :users

  resources :questions # do
  #   resources :questions, :only => [:new, :create]
  # end

  #   resources :users, :only => [:new, :create]
end
