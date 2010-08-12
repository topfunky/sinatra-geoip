# PeepCode Blog App
ENV["TZ"] = "UTC"

disable :logging

configure do
  GEOIP_DB = GeoIPCity::Database.new('data/GeoLiteCity.dat')
end

get "/geoip/api/locate.json" do
  ip_info = GEOIP_DB.look_up(params[:ip])
  content_type 'application/json', :charset => 'utf-8'
  ip_info.to_json
end
