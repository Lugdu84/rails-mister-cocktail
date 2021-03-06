Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/find', to: 'cocktails#find'

  resources :cocktails, only: %i[index show create new] do
    resources :doses, only: %i[new create]
  end

  resources :doses, only: %i[destroy]

  root to: 'cocktails#index'
end
