Rails.application.routes.draw do
  root to: 'leads#index'
  resources :leads
  devise_for :users
end
