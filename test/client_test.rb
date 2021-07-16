require "minitest/autorun"
require "ripe-stat"

# Test against real API
class ClientTest < Minitest::Test
  def setup
    @client = RipeStat::Client.new
  end

  def test_whois
    whois = @client.whois("140.78.90.50")

    assert whois
    assert whois.to_json.length > 5
  end

  def test_network_info
    network_info = @client.network_info("140.78.90.50")

    assert network_info
  end
end
