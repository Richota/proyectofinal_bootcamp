Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'landing/index'
  resources :documents do
    resources :orders, only: :create
  end
  resources :user_documents, only: [:create, :show, :new]

  resources :orders, only: :index do
    collection do
      get 'clean'
    end
  end


  get 'users/index'
  resources :billings, only: [] do
    collection do
      get 'pre_pay'
      get 'execute'
    end
  end
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  root to: "landing#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
