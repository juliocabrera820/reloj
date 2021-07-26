Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated :user do
      root 'attendances#check', as: :unauthenticated_admin
    end
  end

  get 'dashboard', to: 'admin#dashboard'
  post 'attendances/employee_check', to: 'attendances#employee_check', as: 'employee_check'

  resources :companies
  resources :employees
end
