Rails.application.routes.draw do
  resources :restaurants do
  resources :reviews, only: [:new]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get "restaurants" ,to:"restaurant#best"
  get "restaurants" ,to: "restrants#add"
  post "/restaurants" ,to: "restaurants#create"
  # get "restaurants/new"
  # post "restaurants"
  # get "restaurants/38"
  # get "restaurants/38/reviews/new"
  # post "restaurants/38/reviews"


  # Defines the root path route ("/")
  # root "posts#index"
end
# Rails.application.routes.draw do
#   resources :restaurants do
#     collection do
#       get :best
#     end
#   end
# end
end
