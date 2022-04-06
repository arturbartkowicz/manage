Rails.application.routes.draw do
  resources :receipts, only: [:index, :create]
end
