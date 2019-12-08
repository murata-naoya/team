Rails.application.routes.draw do
  devise_for :endusers, controllers: {
      sessions: 'endusers/endusers/sessions',
      registrations: 'endusers/endusers/registrations',
      passwords: 'endusers/endusers/passwords'
  }
  resources :endusers
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, controllers: {
      sessions: 'admin/admins/sessions',
      registrations: 'admin/admins/registrations',
      passwords: 'admin/admins/passwords'
  }
  namespace :admin do
    resources :products
  end
  
end
