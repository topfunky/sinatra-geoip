Dir['vendor/**/lib'].each do |libdir|
  $: << libdir
end

require "sinatra"
require 'geoip_city'
require 'json'
require "app"



