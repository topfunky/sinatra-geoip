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

