Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated :user do
      root 'attendances#check', as: :unauthenticated_admin
    end
  end
  
  get 'reports', to: 'reports#index'
  get 'reports/daily_attendance', to: 'reports#daily_attendance'
  get 'reports/monthly_attendance', to: 'reports#monthly_attendance'
  get 'reports/monthly_absence', to: 'reports#monthly_absence'
  get 'reports/average_time', to: 'reports#average_time'

  get 'dashboard', to: 'admin#dashboard'
  post 'attendances/employee_check', to: 'attendances#employee_check', as: 'employee_check'

  resources :companies
  resources :employees
  resources :reports
end
