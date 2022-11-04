Rails.application.routes.draw do
  resources :students, only: [:index, :create, :update, :destroy]
  resources :instructors, only: [:index, :create, :update, :destroy]
end
