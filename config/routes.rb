Rails.application.routes.draw do

  devise_for :users

  resources :users, only: [:index] do
    member do
      match 'scorecard' => "users#scorecard", via: [:get, :post]
    end
  end

  resources :scores

  root to: "users#index"

end
