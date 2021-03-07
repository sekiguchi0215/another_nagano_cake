Rails.application.routes.draw do
  namespace :admin do
    get 'orders/index'
    get 'orders/show'
  end
  namespace :admin do
    get 'members/index'
    get 'members/edit'
    get 'members/show'
  end
  namespace :admin do
    get 'items/index'
    get 'items/edit'
    get 'items/show'
    get 'items/new'
  end
  namespace :admin do
    get 'genres/index'
    get 'genres/edit'
  end
  namespace :admin do
    get 'admins/top'
  end
  namespace :public do
    get 'orders/index'
    get 'orders/show'
    get 'orders/new'
    get 'orders/cofirm'
    get 'orders/thanks'
  end
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  namespace :public do
    get 'members/edit'
    get 'members/show'
    get 'members/withdrawal'
  end
  namespace :public do
    get 'homes/about'
    get 'homes/top'
  end
  namespace :public do
    get 'cart_items/index'
  end
  namespace :public do
    get 'addresses/index'
    get 'addresses/edit'
  end
  devise_for :members
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
