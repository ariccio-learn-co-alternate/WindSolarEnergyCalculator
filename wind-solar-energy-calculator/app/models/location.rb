class Location < ApplicationRecord
    has_one :solar 
    has_one :wind
end
