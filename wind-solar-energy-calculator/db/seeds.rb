# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


CITY_WIND_DATA= [
[' KANSAS CITY','MO',10.3846153846154],
[' GRAND FORKS','ND',10.2769230769231],
[' FORT SMITH','AR',7.02307692307692],
[' LITTLE ROCK','AR',7.01538461538462],
[' BLUE CANYON','CA',5.38461538461539],
[' LONG BEACH','CA',5.6],
[' LOS ANGELES','CA',1.86923076923077],
[' SAN DIEGO','CA',6.39230769230769],
[' SAN FRANCISCO','CA',10.5307692307692],
[' SANTA BARBARA','CA',5.5],
[' SANTA MARIA','CA',7.33846153846154],
[' COLORADO SPRINGS','CO',9.51538461538462],
[' GRAND JUNCTION','CO',7.68461538461539],
[' WASHINGTON DULLES','DC',6.93846153846154],
[' WASHINGTON NATL','DC',8.94615384615385],
[' DAYTONA BEACH','FL',6.99230769230769],
[' FORT MYERS','FL',7.03076923076923],
[' VERO BEACH','FL',8.16923076923077],
[' BATON ROUGE','LA',6.32307692307692],
[' LAKE CHARLES','LA',7.56153846153846],
[' NEW ORLEANS','LA',8.00769230769231],
[' HOUGHTON LAKE','MI',8.13846153846154],
[' INTERNATIONAL FALLS','MN',7.70769230769231],
[' SAINT CLOUD','MN',8.26923076923077],
[' NORTH PLATTE','NE',9.24615384615385],
[' LAS VEGAS','NV',8.53076923076923],
[' ATLANTIC CITY','NJ',8.71538461538461],
[' BRISTOL-JHNSN CTY-KNGSPRT','TN',4.48461538461539],
[' DEL RIO','TX',8.71538461538462],
[' EL PASO','TX',8.12307692307692],
[' PORT ARTHUR','TX',8.54615384615384],
[' SAN ANGELO','TX',9.57692307692308],
[' SAN ANTONIO','TX',8.24615384615385],
[' WALLOPS ISLAND','VA',9.02307692307693],
[' WALLA WALLA','WA',7.86923076923077],
[' GREEN BAY','WI',8.76923076923077],
[' LA CROSSE','WI',8.53076923076923],
[' SAN JUAN','PR',7.86923076923077],
[' BIG DELTA','AK',9.37692307692308],
[' COLD BAY','AK',16.0692307692308],
[' KING SALMON','AK',9.66923076923077],
[' KEY WEST','FL',10.0307692307692],
[' FORT WAYNE','IN',9.11538461538462],
[' SOUTH BEND','IN',9.1],
[' DES MOINES','IA',9.82307692307692],
[' SIOUX CITY','IA',10.3769230769231],
[' DODGE CITY','KS',13.0846153846154],
[' GRAND RAPIDS','MI',9.47692307692308],
[' ST. LOUIS','MO',9.04615384615385],
[' GREAT FALLS','MT',11.4461538461538],
[' GRAND ISLAND','NE',11.1461538461538],
[' MT. WASHINGTON','NH',35.6692307692308],
[' CAPE HATTERAS','NC',9.67692307692308],
[' OKLAHOMA CITY','OK',11.3384615384615],
[' SEXTON SUMMIT','OR',8.60769230769231],
[' RAPID CITY','SD',10.6846153846154],
[' SIOUX FALLS','SD',10.2076923076923],
[' CORPUS CHRISTI','TX',11.6769230769231],
[' WICHITA FALLS','TX',11.1769230769231],
[' NEW YORK JFK AP','NY',11.1923076923077],
[' NEW YORK Laguardia AP','NY',11.2538461538462],
[' CHUUK- E. CAROLINE IS.','PC',8.89230769230769],
[' YAP- W CAROLINE IS.','PC',8.17692307692308],
[' NEW YORK Central Park','NY',6.19230769230769],
[' PAGO PAGO- AMER SAMOA','PC',11.2],
[' MAJURO- MARSHALL IS','PC',9.45384615384615],
[' KWAJALEIN- MARSHALL IS.','PC',12.7076923076923],
[' POHNPEI- CAROLINE IS.','PC',5.87692307692308],
[' SALT LAKE CITY','UT',7.96153846153846],
[' WEST PALM BEACH','FL',8.95384615384615],
[' SAULT STE. MARIE','MI',7.37692307692308],
[' ST. PAUL ISLAND','AK',14.6461538461538],
[' HOMER','AK',6.95384615384615],
[' BISHOP','CA',8.08461538461538],
[' LOUISVILLE','KY',7.79230769230769],
[' ROANOKE','VA',6.63076923076923],
[' MONTGOMERY','AL',5.92307692307692],
[' ANNETTE','AK',7.91538461538462],
[' FLAGSTAFF','AZ',6.13846153846154],
[' PHOENIX','AZ',6.10769230769231],
[' SACRAMENTO','CA',6.31538461538462],
[' STOCKTON','CA',7.70769230769231],
[' JACKSONVILLE','FL',6.66153846153846],
[' MISSOULA','MT',5.39230769230769],
[' ELY','NV',9.48461538461538],
[' WILMINGTON','NC',7.71538461538462],
[' MEMPHIS','TN',8.12307692307692],
[' OLYMPIA','WA',5.83076923076923],
[' ELKINS','WV',4.88461538461539],
[' ROCKFORD','IL',9.17692307692308],
[' HAVRE','MT',9.43076923076923],
[' SPRINGFIELD','IL',9.33076923076923],
[' NORFOLK','NE',10.6384615384615],
[' SCOTTSBLUFF','NE',9.8],
[' AKRON','OH',9.09230769230769],
[' ERIE','PA',10.0230769230769],
[' BROWNSVILLE','TX',10.3769230769231],
[' WACO','TX',9.97692307692308],
[' NORFOLK','VA',9.56923076923077],
[' MILWAUKEE','WI',10.1230769230769],
[' BETTLES','AK',5.38461538461538],
[' FAIRBANKS','AK',4.37692307692308],
[' TALKEETNA','AK',4.46923076923077],
[' FRESNO','CA',6.01538461538462],
[' PUEBLO','CO',8.3],
[' GREENSBORO-WNSTN-SALM-HGHPT','NC',7.11538461538462],
[' BURNS','OR',6.55384615384615],
[' SALEM','OR',6.53846153846154],
[' AVOCA','PA',7.01538461538462],
[' KOROR','PC',6.14615384615385],
[' DALLAS','TX',9.50769230769231],
[' BIRMINGHAM','AL',6.16923076923077],
[' HUNTSVILLE','AL',7.17692307692308],
[' MOBILE','AL',7.46923076923077],
[' ANCHORAGE','AK',6.90769230769231],
[' GULKANA','AK',5.65384615384615],
[' JUNEAU','AK',7.43076923076923],
[' MCGRATH','AK',4.43846153846154],
[' VALDEZ','AK',5.92307692307692],
[' YAKUTAT','AK',5.59230769230769],
[' TUCSON','AZ',7.68461538461539],
[' WINSLOW','AZ',7.95384615384615],
[' BAKERSFIELD','CA',6.31538461538462],
[' REDDING','CA',6.06923076923077],
[' ALAMOSA','CO',7.33076923076923],
[' DENVER','CO',7.97692307692308],
[' HARTFORD','CT',7.8],
[' WILMINGTON','DE',8.5],
[' GAINESVILLE','FL',6.04615384615385],
[' MIAMI','FL',8.4],
[' ORLANDO','FL',7.69230769230769],
[' PENSACOLA','FL',7.92307692307692],
[' TALLAHASSEE','FL',5.48461538461538],
[' TAMPA','FL',6.83846153846154],
[' ATHENS','GA',6.03076923076923],
[' ATLANTA','GA',8.27692307692308],
[' AUGUSTA','GA',5.49230769230769],
[' COLUMBUS','GA',6.06923076923077],
[' MACON','GA',5.90769230769231],
[' SAVANNAH','GA',6.88461538461539],
[' HILO','HI',6.71538461538462],
[' HONOLULU','HI',10.2769230769231],
[' BOISE','ID',7.60769230769231],
[' LEWISTON','ID',5.8],
[' POCATELLO','ID',9.56153846153846],
[' MOLINE','IL',8.50769230769231],
[' PEORIA','IL',8.30769230769231],
[' EVANSVILLE','IN',6.90769230769231],
[' TOPEKA','KS',8.06923076923077],
[' JACKSON','KY',4.90769230769231],
[' LEXINGTON','KY',7.9],
[' PADUCAH','KY',6.95384615384615],
[' SHREVEPORT','LA',7.30769230769231],
[' CARIBOU','ME',7.96153846153846],
[' PORTLAND','ME',7.94615384615385],
[' BALTIMORE','MD',7.24615384615385],
[' ALPENA','MI',7.64615384615385],
[' MINNEAPOLIS-ST.PAUL','MN',9.66153846153846],
[' JACKSON','MS',6.14615384615385],
[' MERIDIAN','MS',5.84615384615385],
[' TUPELO','MS',6.48461538461538],
[' GLASGOW','MT',10.5461538461538],
[' HELENA','MT',6.86923076923077],
[' KALISPELL','MT',5.38461538461539],
[' LINCOLN','NE',9.81538461538461],
[' VALENTINE','NE',9.90769230769231],
[' ELKO','NV',5.68461538461539],
[' RENO','NV',6.36923076923077],
[' WINNEMUCCA','NV',7.64615384615385],
[' CONCORD','NH',6.03076923076923],
[' ALBUQUERQUE','NM',8.22307692307692],
[' ROSWELL','NM',8.51538461538462],
[' ALBANY','NY',7.87692307692308],
[' BINGHAMTON','NY',8.82307692307692],
[' SYRACUSE','NY',8.28461538461538],
[' ASHEVILLE','NC',6.62307692307692],
[' CHARLOTTE','NC',6.39230769230769],
[' RALEIGH','NC',6.51538461538462],
[' BISMARCK','ND',9.41538461538462],
[' WILLISTON','ND',9.13076923076923],
[' CINCINNATI','OH',8.26923076923077],
[' COLUMBUS','OH',7.59230769230769],
[' TULSA','OK',9.36923076923077],
[' ASTORIA','OR',7.88461538461539],
[' EUGENE','OR',7],
[' MEDFORD','OR',4.11538461538462],
[' PENDLETON','OR',7.96923076923077],
[' PORTLAND','OR',7.45384615384615],
[' ALLENTOWN','PA',7.43076923076923],
[' MIDDLETOWN/HARRISBURG','PA',7.36153846153846],
[' PITTSBURGH','PA',7.81538461538462],
[' WILLIAMSPORT','PA',6.53076923076923],
[' CHARLESTON','SC',7.87692307692308],
[' COLUMBIA','SC',6.13846153846154],
[' GREENVILLE-SPARTANBURG','SC',6.60769230769231],
[' CHATTANOOGA','TN',5.01538461538462],
[' KNOXVILLE','TN',5.98461538461538],
[' NASHVILLE','TN',7.06923076923077],
[' AUSTIN','TX',6.63846153846154],
[' HOUSTON','TX',7.46923076923077],
[' BURLINGTON','VT',8.26153846153846],
[' LYNCHBURG','VA',5.73846153846154],
[' RICHMOND','VA',7.67692307692308],
[' QUILLAYUTE','WA',5.45384615384615],
[' SEATTLE','WA',7.9],
[' SPOKANE','WA',8.71538461538462],
[' YAKIMA','WA',6.23076923076923],
[' BECKLEY','WV',7.12307692307692],
[' CHARLESTON','WV',4.56153846153846],
[' HUNTINGTON','WV',5.77692307692308],
[' MADISON','WI',8.16153846153846],
[' LANDER','WY',6.26153846153846],
[' SHERIDAN','WY',7.18461538461539],
[' NOME','AK',9.38461538461539],
[' ISLIP','NY',9.06153846153846],
[' PHILADELPHIA','PA',9.25384615384616],
[' PROVIDENCE','RI',9.24615384615385],
[' VICTORIA','TX',9.39230769230769],
[' TOLEDO','OH',8.67692307692308],
[' MIDLAND-ODESSA','TX',10.9307692307692],
[' YOUNGSTOWN','OH',8.56153846153846],
[' BARROW','AK',12.6307692307692],
[' BETHEL','AK',11.6461538461538],
[' KODIAK','AK',10.7923076923077],
[' KOTZEBUE','AK',11.7230769230769],
[' BRIDGEPORT','CT',9.58461538461539],
[' KAHULUI','HI',12.8076923076923],
[' LIHUE','HI',13.2923076923077],
[' CHICAGO','IL',9.87692307692308],
[' INDIANAPOLIS','IN',9.5],
[' DUBUQUE','IA',10.2692307692308],
[' WATERLOO','IA',9.77692307692308],
[' CONCORDIA','KS',11.0461538461538],
[' GOODLAND','KS',12.1230769230769],
[' WICHITA','KS',11.5307692307692],
[' BOSTON','MA',11.5076923076923],
[' WORCESTER','MA',10.1692307692308],
[' DETROIT','MI',9.43076923076923],
[' FLINT','MI',9.03846153846154],
[' LANSING','MI',8.96153846153846],
['MUSKEGON','MI',9.82307692307692],
[' DULUTH','MN',10.0307692307692],
[' ROCHESTER','MN',12.0923076923077],
[' COLUMBIA','MO',9.5],
[' SPRINGFIELD','MO',9.26923076923077],
[' BILLINGS','MT',10.6692307692308],
[' OMAHA','NE',10],
[' NEWARK','NJ',9.82307692307692],
[' CLAYTON','NM',12.0769230769231],
[' BUFFALO','NY',10.3076923076923],
[' ROCHESTER','NY',8.95384615384615],
[' FARGO','ND',11.1307692307692],
[' CLEVELAND','OH',9.56923076923077],
[' DAYTON','OH',9.37692307692308],
[' MANSFIELD','OH',9.76923076923077],
[' ABERDEEN','SD',10.6307692307692],
[' HURON','SD',10.3769230769231],
[' ABILENE','TX',10.8846153846154],
[' AMARILLO','TX',12.8615384615385],
[' GALVESTON','TX',11.1307692307692],
[' LUBBOCK','TX',12],
[' CASPER','WY',11.9923076923077],
[' CHEYENNE','WY',12.2769230769231],
[' GUAM','PC',9.67692307692308]
]


CITY_WIND_DATA.each do |data_line|
    # create location first, it owns wind & solar, 
    # so wind holds the foreign key
    
    # l = Location.new
    # l.city = data_line[0].strip
    # l.state = data_line[1]
    # l.save
    # loc = Location.find(l.id)

    w = WindValue.new
    w.city = data_line[0].strip
    w.state = data_line[1]
    w.speed = data_line[2]
    #w.location_id = loc.id
    w.save
end
