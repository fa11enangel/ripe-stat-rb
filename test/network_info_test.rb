require "minitest/autorun"
require "ripe-stat/network_info"
require "json"

# Test NetworkInfo
class NetworkInfoTest < MiniTest::Test
  def setup
    File.open("test/fixtures/network-info/140.78.90.50.json", "r") do |file|
      json = JSON.parse(file.read)
      @network_info = RipeStat::NetworkInfo.new(json)
    end
  end

  def test_prefix
    assert_equal "140.78.0.0/16", @network_info.prefix
  end

  def test_asns
    asns = @network_info.asns
    assert_equal 1, asns.count
    assert_equal "1205", asns.first
  end
end
