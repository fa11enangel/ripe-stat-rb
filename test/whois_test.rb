require "minitest/autorun"
require "ripe-stat/whois"
require "json"
require "date"

# Test Whois
class WhoisTest < MiniTest::Test
  def setup
    File.open("test/fixtures/whois/140.78.90.50.json", "r") do |file|
      json = JSON.parse(file.read)
      @whois = RipeStat::Whois.new(json)
    end
  end

  def test_creating_object
    assert_equal "ok", @whois.status
  end

  def test_inetnum
    assert_equal "140.78.0.0/16", @whois.inetnum
  end

  def net_name
    assert_equal "JKU-LAN", @whois.netname
  end

  def test_descr
    assert_equal "Johannes Kepler University", @whois.descr
  end

  def test_country
    assert_equal "AT", @whois.country
  end

  def test_last_modified
    expected_date = Date.parse("2019-12-04T13:11:26Z")

    assert_equal expected_date, @whois.last_modified
  end
end
