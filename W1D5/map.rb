class Map
    attr_accessor :map
    def initialize
        @map = []
    end

    def set(key, value)
        map.push([key, value]) if !self.keys.include?(key)
    end

    def get(key)
    end

    def delete(key)
    end

    def show
    end

    def keys
        keys = []
        map.each { |pair| keys << pair[0] }
        keys
    end
end