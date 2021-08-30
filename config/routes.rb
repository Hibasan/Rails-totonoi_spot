Rails.application.routes.draw do
  root to: 'facilities#top'
  mount LetterOpenerWeb::Engine, at: '/letter_opener'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get '/about', to: 'facilities#about'
  get '/facilities/search', to: 'facilities#search'
  get '/users/review', to: 'users#review'
  get '/users/favorite_facilities', to: 'users#favorite_facilities'
  post 'users/guest_sign_in', to: 'users#guest_sign_in'
  post 'users/admin_guest_sign_in', to: 'users#admin_guest_sign_in'
  resources :facilities
  resources :users ,only: [:show]
  resources :reviews , except: [:index]
  resources :favorite_facilities,only: %i[create destroy]
end

# resources
# index
# show
# new
# create
# edit
# update
# destroy
