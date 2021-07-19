require "minitest/autorun"
require "ripe-stat"

# Test against real API
class ClientTest < Minitest::Test
  def setup
    @client = RipeStat::Client.new
  end

  def test_whois_ip
    whois = @client.whois("140.78.90.50")

    assert whois
    assert whois.to_json.length > 5
  end

  def test_whois_asn_16bit
    whois = @client.whois("AS1205")

    assert whois
    assert whois.to_json.length > 5
  end

  def test_network_info
    network_info = @client.network_info("140.78.90.50")

    assert network_info
    assert network_info.to_json.length > 5
  end

  def test_as_overview
    as_overview = @client.as_overview("AS1205")

    assert as_overview
    assert as_overview.to_json.length > 5
  end
end
