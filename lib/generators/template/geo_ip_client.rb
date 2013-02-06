GeoIpClient.configure do |config|
  config.server_path = "" # Insert the location of your server
  config.secret_key = nil # Inser your secret key if your RubyGeoIp server requires it
end
