require 'rails/generators'
require 'rails/generators/active_record'

class GeoIpClientGenerator < Rails::Generators::Base

  source_root File.expand_path("../templates", __FILE__)

  desc "This generator creates the initializer file at config/initializers"
  def copy_initializer_file
    copy_file "geo_ip_client.rb", "config/initializers/geo_ip_client.rb"
  end

end
