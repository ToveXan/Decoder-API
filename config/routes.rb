Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :graham_mains, :graham_tutorials, :graham_ones, :graham_twos, :graham_threes
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
