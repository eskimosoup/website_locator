Rails.application.routes.draw do
  resources :websites
  resources :servers
  root to: "application#index"
end
