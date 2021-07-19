require "minitest/autorun"
require "ripe-stat/as_overview"
require "json"

class AsOverviewTest < Minitest::Test
  def setup
    File.open("test/fixtures/as-overview/AS1205.json", "r") do |file|
      json = JSON.parse(file.read)
      @as_overview = RipeStat::AsOverview.new(json)
    end
  end

  def test_holder
    assert_equal "JKU-LINZ-AS - University Linz", @as_overview.holder
  end
end
