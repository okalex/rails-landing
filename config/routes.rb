Web::Application.routes.draw do

  root 'home#index'
  get 'thanks' => 'home#thanks'

  get 'signup' => 'signups#new'
  get 'signups/new' => 'signups#new'
  post 'signups' => 'signups#create'
  namespace :admin do
    get 'signups' => 'signups#index'
  end

  devise_for :users
end
