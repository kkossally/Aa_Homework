class Map
    attr_accessor :map
    def initialize
        @map = []
    end

    def set(key, value)
        map.push([key, value]) if !self.keys.include?(key)
    end

    def get(key)
        map.each { |pair| return pair[1] if pair[0] == key }
        nil
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