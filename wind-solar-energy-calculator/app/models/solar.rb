def pvwatts_API_key
  IO.binread("#{ENV['HOME']}/.keys/PVWatt/PVWatt_API_key_only.txt")
end

module PVWATTS_DATA
  FORMAT = {
    json: "json", # default
    xml: "xml",
    default: :json
  }
  MODULE_TYPE = {
    standard: "0", # default
    premium: "1",
    thin_film: "2",
    default: :standard
  }


  #   The tilt angle is the angle from horizontal of the photovoltaic modules in the array. 
  # For a fixed array, the tilt angle is the angle from horizontal of the array where 0° = horizontal, and 90° = vertical.
  # For arrays with one-axis tracking, the tilt angle is the angle from horizontal of the tracking axis.
  # The tilt angle does not apply to arrays with two-axis tracking.

  # The PVWatts® default value for the tilt angle depends on the array type: 
  # For a fixed array, the default value is 20 degrees, and for one-axis tracking the default value is zero.
  # A common rule of thumb for fixed arrays is to set the tilt angle to the latitude of the system's location to maximize the system's total electrical output over the year.
  # Use a lower tilt angle favor peak production in the summer months when the sun is high in the sky,
  # or a higher tilt angle to increase output during winter months.
  # Higher tilt angles tend to cost more for racking and mounting hardware, and may increase the risk of wind damage to the array.

  # For an array installed on a building's roof, you may want to choose a tilt angle equal to the roof pitch.
  TILT = {
    default: "20"
  }

  # 180◦ in northern hemisphere, 0◦ in southern hemisphere
  AZIMUTH = {
    north: "180",
    south: "0"
  }

  SYSTEM_LOSSES = {
    default: "14"
  }

  SYSTEM_CAPACITY = {
    default: "5" # in kW
  }

  ARRAY_TYPE = {
    fixed_open_rack: "0",
    fixed_roof_mounted: "1",
    single_axis: "2",
    single_axis_backtracking: "3",
    two_axis: "4",
    default: :fixed_roof_mounted #the PVWatt default is open rack, but we'll assume its roof mounted!
  }
end
PVWATTS_API_URL = "https://developer.nrel.gov/api/pvwatts/v6.json"


def request_url(address, capacity, tilt)
  "#{PVWATTS_API_URL}?api_key=#{pvwatts_API_key}" +
  "&format=json" +
  "&system_capacity=#{capacity}" + 
  "&module_type=0" +
  "&losses=14" + 
  "&array_type=1" + 
  "&tilt=#{tilt}" +
  "&azimuth=180" +
  "&address=\"#{address}\""

end




class Solar < ApplicationRecord
  validates :capacity, presence: true
  validates :tilt, presence: true
  validate :validate_ranges

  include PVWATTS_DATA
  belongs_to :location

  def self.solar_data(address, capacity, tilt)
    url = request_url(address, capacity, tilt)
    response = HTTParty.get(url, format: :plain)
    # byebug
    parsed = JSON.parse(response, symbolize_names: true)
    # @ac_annual = parsed[:outputs][:ac_annual]
    # @solrad_annual = parsed[:outputs][:solrad_annual]
    # byebug
    return {
      ac_annual: parsed[:outputs][:ac_annual],
      solrad_annual: parsed[:outputs][:solrad_annual]
    }
  end


  def validate_ranges
    (capacity >= 0.5) && 
    (capacity <= 5000) &&
    (tilt >= 0) &&
    (tilt <= 90)
  end


  # def self.table_repr_columns
    
  # end

  def table_repr_row
    "<td>#{capacity}</td><td>#{tilt}</td><td>#{ac_annual.truncate(2)}</td><td>#{solrad_annual.truncate(2)}</td>"
  end

  def one_line_repr
    # byebug
    "#{capacity} kW, #{tilt} degrees, #{ac_annual.truncate(2)} kW annual AC power, #{solrad_annual.truncate(2)} annual solar radiation."
  end

  # def solar_monthly_savings
  #   return ( 0.1326 * @solrad_annual / 12 )
  # end



end
