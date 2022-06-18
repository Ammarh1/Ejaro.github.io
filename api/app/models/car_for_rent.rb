class CarForRent < ApplicationRecord
    has_many_attached :images

    def images_url 
        Rails.application.routes.helpers.url_for(images) if images.attached? 
    end
end
