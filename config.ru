if ENV['RACK_ENV'] != "production"
  Dir[File.dirname(__FILE__) + "/vendor/*"].each do |gemdir|
    $: << gemdir + "/lib"
  end

  require "rubygems"
  require "isolate/now"
end

require 'init'

run Sinatra::Application
