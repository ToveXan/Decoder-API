Rails.application.routes.draw do
  resources :graham_cases
  resources :graham_mains
  resources :graham_tutorials
  namespace :api do
    namespace :v1 do
      resources :users, :grahams
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
