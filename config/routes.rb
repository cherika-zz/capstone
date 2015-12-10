Rails.application.routes.draw do
  devise_for :users

  root :to => "welcome#index"

  resources :states do
    resources :regs
    resources :applications
  end

  resources :calendar
  resources :events

  namespace :admin do
    namespace :controllers do
      resources :users
    end
  end
end
