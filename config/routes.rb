Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
    root :to => 'dashboards#index'
    resources "contacts", only: [:new, :create]
    resources "users", only: [:new, :create]
end
