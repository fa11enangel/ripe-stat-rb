require "ripe-stat/basic_object"

module RipeStat
  class NetworkInfo < BasicObject
    def prefix
      data["prefix"]
    end

    def asns
      data["asns"]
    end
  end
end
