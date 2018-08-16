Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :find, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
    namespace :admin do
      resources :restaurants, only: [:edit, :update, :delete]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
