require "minitest/autorun"
require "ripe-stat/whois"
require "json"
require "date"

# Test Whois
class WhoisTest < MiniTest::Test
  def test_creating_object_from_json
    ["140.78.90.50.json", "AS1205.json"].each do |file_name|
      whois = read_whois(file_name)

      assert_equal "ok", whois.status
    end
  end

  def test_inetnum
    whois = read_whois("140.78.90.50.json")

    assert_equal "140.78.0.0/16", whois.inetnum
  end

  def net_name
    whois = read_whois("140.78.90.50.json")

    assert_equal "JKU-LAN", whois.netname
  end

  def test_descr
    whois = read_whois("140.78.90.50.json")

    assert_equal "Johannes Kepler University", whois.descr
  end

  def test_country
    whois = read_whois("140.78.90.50.json")

    assert_equal "AT", whois.country
  end

  def test_last_modified
    whois = read_whois("140.78.90.50.json")
    expected_date = Date.parse("2019-12-04T13:11:26Z")

    assert_equal expected_date, whois.last_modified
  end

  def test_asn_last_modified
    whois = read_whois("AS1205.json")
    expected_date = Date.parse("2017-11-15T09:14:26Z")

    assert_equal expected_date, whois.last_modified
  end


  def test_asn_created
    whois = read_whois("AS1205.json")
    expected_date = Date.parse("2002-09-03T14:20:59Z")

    assert_equal expected_date, whois.created
  end

  private

  def read_whois(file_name)
    File.open("test/fixtures/whois/#{file_name}", "r") do |file|
      json = JSON.parse(file.read)
      RipeStat::Whois.new(json)
    end
  end
end
