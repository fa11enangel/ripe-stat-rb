require "ripe-stat/http_request"
require "ripe-stat/whois"
require "ripe-stat/network_info"
require "ripe-stat/as_overview"

module RipeStat
  # Client to communicate with stat.ripe.net
  class Client
    def initialize
      @http_request = HttpRequest.new
    end
    def whois(resource, params = {})
      response = @http_request.lookup("whois", resource, params)
      return false unless response

      Whois.new(response)
    end


    def network_info(resource)
      response = @http_request.lookup("network-info", resource)
      return false unless response

      NetworkInfo.new(response)
    end

    def as_overview(resource)
      response = @http_request.lookup("as-overview", resource)
      return false unless response

      AsOverview.new(response)
    end
  end
end
