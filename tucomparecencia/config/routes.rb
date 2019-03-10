Rails.application.routes.draw do
  get 'contacts/index'
  get 'contacts/create'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'landing/index'
  get 'landing/faq'

  resources :contacts, only: [:index, :create]

  resources :documents do
    resources :orders, only: :create
  end
  resources :user_documents, only: [:index, :create, :new]

  resources :orders, only: :index do
    collection do
      get 'clean'
    end
  end

  get 'users/index'
  post 'users/address'
  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end

  devise_for :users, controllers: {
        omniauth_callbacks: 'users/omniauth_callbacks',
        registrations: 'users/registrations'
      }
  root to: "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
