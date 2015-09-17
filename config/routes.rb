Rails.application.routes.draw do
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
