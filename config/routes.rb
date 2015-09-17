Rails.application.routes.draw do
  devise_for :users
  get 'applications/index'

  get 'applications/new'

  get 'applications/show'

  get 'applications/edit'

  root :to => "welcome#index"

  resources :states do
    resources :regs
    resources :applications
  end
end
