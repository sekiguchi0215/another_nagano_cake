Rails.application.routes.draw do
  devise_for :members
  devise_for :admins
  
  root "public/homes#top"

  namespace :admin do
    get "/admins" => "admins#top"
    resources :items
    resources :genres
    resources :members
    resources :orders, only: [:index, :show, :update]
    resources :order_items, only: [:update]
  end

  namespace :public do
    get "/about" => "homes#about"
    delete "/cart_items/destroy_all" => "cart_items#destroy_all"
    resources :items, only: [:index, :show, :new] do
      get :search, on: :collection
    end
    resources :cart_items
    post "/orders/session" => "order#session_create"
    get  "/orders/confirm" => "orders#confirm"
    post "/orders/confirm" => "orders#confirm"
    get  "/orders/thanks"  => "orders#thanks"
    patch "/members/withdrawal" => "members#destroy"
    get  "/members/withdrawal" => "members#withdrawal"
    resources :orders, only: [:new, :create, :index, :show]
    resource  :members, only: [:show, :edit, :update]
    resources :addresses, only: [:index, :edit, :destroy, :create, :update]
  end
end
