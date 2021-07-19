require "ripe-stat/basic_object"

module RipeStat
  class AsOverview < BasicObject
    def holder
      data["holder"]
    end
  end
end
