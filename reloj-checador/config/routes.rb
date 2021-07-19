Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated :user do
      root 'attendance#check', as: :unauthenticated_admin
    end
  end

  get 'dashboard', to: 'admin#dashboard'
  
  resources :companies
  resources :employees
end
