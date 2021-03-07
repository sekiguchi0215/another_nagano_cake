Rails.application.routes.draw do
  devise_for :members
  devise_for :admins
  
end
