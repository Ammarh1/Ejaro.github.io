class CarForRentSerializer
  include JSONAPI::Serializer
  attributes :id, :image, :images_url, :make,
  :model, :Kilometers_Traveled, :Latitude, :Longitude 
end
