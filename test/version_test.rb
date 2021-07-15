require "minitest/autorun"
require_relative "../lib/ripe-stat/version"

# Just t be sure we have a version here
class VersionTest < Minitest::Test
  def test_gem_version_exists
    assert RipeStat::VERSION
  end
end
