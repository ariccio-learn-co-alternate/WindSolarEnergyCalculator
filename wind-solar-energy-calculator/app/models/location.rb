class Location < ApplicationRecord
    has_one :solar, :wind
end
