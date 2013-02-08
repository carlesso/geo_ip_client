# GeoIpClient

GeoIpClient is a simple gem which allows you to speak with your [RubyGeoIp](https://github.com/carlesso/RubyGeoIp) server.


## Installation

Add this line to your application's Gemfile:

    gem 'geo_ip_client'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install geo_ip_client

## Configuration

Edit your `config/initializers/geo_ip_client.rb` like:

```ruby
GeoIpClient.configure do |config|
  config.server_path = "" # Insert the location of your server
  config.secret_key = nil # Inser your secret key if your RubyGeoIp server requires it
end

```

## Usage
```ruby
 > GeoIpClient.search("64.71.22.18")
=> {"request"=>"64.71.22.18",
    "ip"=>"64.71.22.18",
    "country_code2"=>"US",
    "country_code3"=>"USA",
    "country_name"=>"United States",
    "continent_code"=>"NA",
    "region_name"=>"CA",
    "city_name"=>"Santa Clara",
    "postal_code"=>"95054",
    "latitude"=>37.39609999999999,
    "longitude"=>-121.96170000000001,
    "dma_code"=>807,
    "area_code"=>408,
    "timezone"=>"America/Los_Angeles",
    "region_long_name"=>"California"}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## CHANGELOG

### v. 0.0.3
 * Added `region_long_name` field (thanks to [tommyblue](https://github.com/tommyblue)) which translate `region_name` according with [MaxMind Regions](http://dev.maxmind.com/static/csv/codes/maxmind/region.csv)

### v. 0.0.2
 * Minor update to republish Gem with updated .gemspec

### v. 0.0.1
 * First release

