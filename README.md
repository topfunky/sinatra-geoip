# Sinatra GeoIP App

Extremely simple IP to Lat/Long API demo. Use at your own risk.

# Author

Geoffrey Grosenbach http://peepcode.com

# Requirements

* Build ext/GeoIP-1.4.6 (./configure && make && sudo make install)
* Download binary GeoLiteCity.dat database from http://www.maxmind.com/app/geolitecity
* Put GeoLiteCity.dat in "./data"
* Isolate will install other dependencies when you launch the app.

# Run

    rackup -p 3000 config.ru

# API

View JSON data for an IP address with:

    http://localhost:3000/geoip/api/locate.json?ip=24.18.211.123

    {
        latitude: 47.684700012207
        country_name: "United States"
        area_code: 206
        city: "Seattle"
        region: "WA"
        longitude: -122.384803771973
        postal_code: "98117"
        country_code3: "USA"
        country_code: "US"
        dma_code: 819
    }

# Legal

This product includes GeoLite data created by MaxMind, available from http://www.maxmind.com/.


