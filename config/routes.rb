Rails.application.routes.draw do

  root 'restaurants#index'
  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [ :new, :create ]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
