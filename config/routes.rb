Rails.application.routes.draw do
  resources :hosts
  resources :websites
  resources :servers do
    get 'all', on: :collection
  end
  root to: "application#index"
end
