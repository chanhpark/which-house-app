Rails.application.routes.draw do
  devise_for :users
  root 'houses#index'
  resources :houses do
    collection { post :import }
      collection do
        get 'search'
      end
  end
end
