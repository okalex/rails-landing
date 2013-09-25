Web::Application.routes.draw do

  root 'home#index'
  get 'thanks' => 'home#thanks'
  get 'pricing' => 'home#pricing'

  get 'signup' => 'signups#new'
  resources 'signups', only: ['new', 'create']
  namespace :admin do
    resources 'signups', only: ['index', 'destroy']
  end

  devise_for :users
end
