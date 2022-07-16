Rails.application.routes.draw do
  root "flights#index"

  get "/mybookings", to: "bookings#indexByUser"

  resources :flights
  resources :bookings
  devise_for :users
end
