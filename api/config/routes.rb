Rails.application.routes.draw do
  resources :car_for_rents
  get "images/:id", to: 'car_for_rents#images'  

  post "Booking", to: 'car_for_rents#Booking'  

end
