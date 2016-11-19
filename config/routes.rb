Rails.application.routes.draw do
  devise_for :users
  resources :petitions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  resources :petitions do
    collection do
      match 'search' => 'home#search', via: [:get, :post], as: :search
    end
  end

end
