Rails.application.routes.draw do
  devise_for :users

  root :to => "welcome#index"

  resources :states do
    resources :regs
    resources :applications
  end

  resources :calendar
  resources :events
end
