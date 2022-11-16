Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:show, :edit, :update, :destroy]
end

# Prefix Verb   URI Pattern                                       Controller#Action
# restaurant_reviews POST   /restaurants/:restaurant_id/reviews(.:format)     reviews#create
# new_restaurant_review GET    /restaurants/:restaurant_id/reviews/new(.:format) reviews#new
#        restaurants GET    /restaurants(.:format)                            restaurants#index
#                    POST   /restaurants(.:format)                            restaurants#create
#     new_restaurant GET    /restaurants/new(.:format)                        restaurants#new
#    edit_restaurant GET    /restaurants/:id/edit(.:format)                   restaurants#edit
#         restaurant GET    /restaurants/:id(.:format)                        restaurants#show
#                    PATCH  /restaurants/:id(.:format)                        restaurants#update
#                    PUT    /restaurants/:id(.:format)                        restaurants#update
#                    DELETE /restaurants/:id(.:format)                        restaurants#destroy
#        edit_review GET    /reviews/:id/edit(.:format)                       reviews#edit
#             review GET    /reviews/:id(.:format)                            reviews#show
#                    PATCH  /reviews/:id(.:format)                            reviews#update
#                    PUT    /reviews/:id(.:format)                            reviews#update
#                    DELETE /reviews/:id(.:format)                            reviews#destroy
# turbo_recede_historical_location GET    /recede_historical_location(.:format)             turbo/native/navigation#recede
# turbo_resume_historical_location GET    /resume_historical_location(.:format)             turbo/native/navigation#resume
# turbo_refresh_historical_location GET    /refresh_historical_location(.:format)            turbo/native/navigation#refresh
