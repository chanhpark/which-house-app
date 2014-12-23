Rails.application.routes.draw do
  root 'houses#index'
  resources :houses do
    collection { post :import }
  end

end
