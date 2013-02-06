require "geo_ip_client/version"
require "open-uri"
require "json"

module GeoIpClient
  class << self
    attr_accessor :server_path, :secret_key

    def configure
      yield self
    end

    def search(ip)
      if server_path.nil?
        raise "No server path specified!"
      end
      if secret_key.nil?
        req = open("#{server_path}/?q=#{ip}")
      else
        req = open("#{server_path}/?auth=#{secret_key}&q=#{ip}")
      end
      if req.status[0].to_s == "200"
        return JSON.parse req.read
      else
        raise JSON.parse(req.read)["error"]
      end
    end

  end
end
