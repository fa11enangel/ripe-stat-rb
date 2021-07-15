require "minitest/autorun"
require "ripe-stat/client"

# Test against real API
class ClientTest < Minitest::Test
  def test_whois
    client = RipeStat::Client.new
    whois = client.whois("140.78.90.50")

    assert whois
    assert whois.to_json.length > 5
  end
end
