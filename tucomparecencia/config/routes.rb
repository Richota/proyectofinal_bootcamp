Rails.application.routes.draw do
  get 'landing/index'
  resources :documents do
    resources :orders, only: :create
  end

  resources :orders, only: :index do
    collection do
      get 'clean'
    end
  end

  resources :user_documents, only: [:create, :show, :new]
  get 'users/index'
  resources :billings, only: [] do
    collection do
      get 'pre_pay'
    end
  end
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
