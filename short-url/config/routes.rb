Rails.application.routes.draw do
  root to: "users#index"

  resources :users, only: [:index, :new, :create] do
    member do
      resources :urls, only: [:index, :new, :create, :show, :destroy]
    end
  end

end
