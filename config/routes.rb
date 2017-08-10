Rails.application.routes.draw do
  resources :songs do
    member do
        post 'add', to:'songs#add', as: 'add'
    end
  end
  resources :genres
  devise_for :users
  root 'songs#index'  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
