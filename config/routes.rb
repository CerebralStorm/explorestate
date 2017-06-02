Rails.application.routes.draw do
  resources :zip_codes
  root to: 'leads#index'
  resources :leads
  devise_for :users
end
