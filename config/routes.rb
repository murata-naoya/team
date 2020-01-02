Rails.application.routes.draw do
  namespace :admin do
    resources :genres, only: [:index, :create, :edit, :update, :destroy]
  end
  devise_for :endusers, controllers: {
      sessions: 'endusers/endusers/sessions',
      registrations: 'endusers/endusers/registrations',
      passwords: 'endusers/endusers/passwords'
  }

  scope module: 'endusers' do
    resources :endusers, only: [:show, :edit, :update, :destroy]
    resources :products, only: [:index, :show] do
      resources :carts, only: [:create, :update, :destroy]
    end
    resources :carts, only: [:index]
    patch "/carts/:id/change" => "carts#change", as:"cart_change"
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admins, controllers: {
      sessions: 'admin/admins/sessions',
      registrations: 'admin/admins/registrations',
      passwords: 'admin/admins/passwords'
  }
  namespace :admin do
    resources :products
    resources :endusers, only: [:index]
  end
  
end
