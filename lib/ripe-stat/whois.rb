require "ripe-stat/basic_object"
require "date"

module RipeStat
  class Whois < BasicObject
    def inetnum
      record_value("inetnum")
    end

    def netname
      record_value("netname")
    end

    def descr
      record_value("descr")
    end

    def country
      record_value("country")
    end

    def last_modified
      value = record_value("last-modified")
      return value unless value

      Date.parse(value)
    end

    private

    def record_value(key)
      return nil if records.count < 1

      records[0].each do |record|
        if record["key"] == key
          return record["value"]
        end
      end
    end

    def records
      data["records"]
    end

    def data
      @json["data"]
    end
  end
end
