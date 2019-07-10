class Location < ApplicationRecord
    has_one :solar 
    has_one :wind
    belongs_to :user

    def address_repr
        "#{city}, #{state}"
    end
end
