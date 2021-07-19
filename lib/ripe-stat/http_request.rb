require "uri"
require "net/https"
require "json"

module RipeStat
  # run all the requests for us
  class HttpRequest
    ALLOWED_DATA_CALLS = %i[whois network-info as-overview]

    def lookup(data_call, resource, params = {})
      # if !ALLOWED_DATA_CALLS.include?(data_call)
      #   raise "data_call: #{data_call} - not implemented yet?"
      # end
      request(data_call, resource, params)
    end

    private

    # example:
    # https://stat.ripe.net/data/network-info/data.json?resource=140.78.90.50
    def request(data_call, resource, params = {})
      http = Net::HTTP.new("stat.ripe.net", 443)
      http.use_ssl = true

      path = "/data/#{data_call}/data.json?resource=#{resource}"

      request = Net::HTTP::Get.new(path)

      response = http.request(request)

      case response
      when Net::HTTPOK
        if ENV["DEBUG"]
          p "=========================="
          p response.body
          File.open("output.json", "w") { |file|
            file.write(response.body)
          }
          p "=========================="
        end

        JSON.parse(response.body)
      else
        puts response.inspect
        false
      end
    end
  end
end
