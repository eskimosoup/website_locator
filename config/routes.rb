Rails.application.routes.draw do
  resources :hosts
  resources :websites
  resources :servers
  root to: "application#index"
end
