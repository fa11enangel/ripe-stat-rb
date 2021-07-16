module RipeStat
  # Basic object for methods every response have
  class BasicObject
    attr_reader :json

    def initialize(json)
      @json = json
    end

    # TODO: This is for all objects
    def status
      @json["status"]
    end

    def to_json
      @json
    end

    private

    def data
      @json["data"]
    end
  end
end
