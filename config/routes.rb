Rails.application.routes.draw do
  root to: 'facilities#top'
  mount LetterOpenerWeb::Engine, at: "/letter_opener"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users#guest_session'
    post 'users/guest_sign_in', to: 'users#admin_guest_session'
  end

  get '/about',to: 'facilities#about'
  get '/facilities/search',to: 'facilities#search'
  get '/users/review',to: 'users#review'
  get '/users/favorite_facilities',to: 'users#favorite_facilities'
  resources :users
  resources :reviews
  resources :facilities
  resources :favorite_facilities

end



# Prefix Verb   URI Pattern                                                                              Controller#Action
#   root GET    /                                                                                        users#top
#  users GET    /users(.:format)                                                                         users#index
#        POST   /users(.:format)                                                                         users#create
# new_user GET    /users/new(.:format)                                                                     users#new
# edit_user GET    /users/:id/edit(.:format)                                                                users#edit
#   user GET    /users/:id(.:format)                                                                     users#show
#        PATCH  /users/:id(.:format)                                                                     users#update
#        PUT    /users/:id(.:format)                                                                     users#update
#        DELETE /users/:id(.:format)                                                                     users#destroy
# reviews GET    /reviews(.:format)                                                                       reviews#index
#        POST   /reviews(.:format)                                                                       reviews#create
# new_review GET    /reviews/new(.:format)                                                                   reviews#new
# edit_review GET    /reviews/:id/edit(.:format)                                                              reviews#edit
# review GET    /reviews/:id(.:format)                                                                   reviews#show
#        PATCH  /reviews/:id(.:format)                                                                   reviews#update
#        PUT    /reviews/:id(.:format)                                                                   reviews#update
#        DELETE /reviews/:id(.:format)                                                                   reviews#destroy
# facilities GET    /facilities(.:format)                                                                    facilities#index
#        POST   /facilities(.:format)                                                                    facilities#create
# new_facility GET    /facilities/new(.:format)                                                                facilities#new
# edit_facility GET    /facilities/:id/edit(.:format)                                                           facilities#edit
# facility GET    /facilities/:id(.:format)                                                                facilities#show
#        PATCH  /facilities/:id(.:format)                                                                facilities#update
#        PUT    /facilities/:id(.:format)                                                                facilities#update
#        DELETE /facilities/:id(.:format)                                                                facilities#destroy
