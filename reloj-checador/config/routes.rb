Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    unauthenticated :user do
      root 'attendances#check', as: :unauthenticated_admin
    end
  end

  get 'reports', to: 'reports#index'
  get 'reports/daily_attendance', to: 'reports#daily_attendance', as: 'daily_attendance'
  get 'reports/daily_attendance_pdf/:id/:company', to: 'reports#daily_attendance_pdf', as: 'daily_attendance_pdf'
  get 'reports/monthly_absence', to: 'reports#monthly_absence', as: 'monthly_absence'
  get 'reports/monthly_absence_pdf/:id/', to: 'reports#monthly_absence_pdf', as: 'monthly_absence_pdf'
  get 'reports/average_time_in', to: 'reports#average_time_in', as: 'average_time_in'
  get 'reports/average_time_in_pdf/:id', to: 'reports#average_time_in_pdf', as: 'average_time_in_pdf'
  get 'reports/average_time_out', to: 'reports#average_time_out', as: 'average_time_out'
  get 'reports/average_time_out_pdf/:id', to: 'reports#average_time_out_pdf', as: 'average_time_out_pdf'

  get 'dashboard', to: 'admin#dashboard'
  post 'attendances/employee_check', to: 'attendances#employee_check', as: 'employee_check'

  resources :companies
  resources :employees
  get 'employees/status/:id', to: 'employees#update_status', as: 'update_status'
  resources :reports
end
