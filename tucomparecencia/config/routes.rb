Rails.application.routes.draw do
  get 'landing/index'
  resources :documents
  resources :user_documents, only: [:create, :show, :new]
  get 'users/index'
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
