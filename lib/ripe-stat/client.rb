require "ripe-stat/http_request"
require "ripe-stat/whois"

module RipeStat
  # Client to communicate with stat.ripe.net
  class Client
    def whois(resource, params = {})
      http_request = HttpRequest.new

      response = http_request.lookup("whois", resource, params)

      return false unless response

      Whois.new(response)
    end
  end
end
