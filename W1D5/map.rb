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
        map.each_with_index do |pair, idx| 
            return map.delete_at(idx) if pair[0] == key
        end
    end

    def show
        mirror = map.map { |pair| pair }
    end

    def keys
        keys = []
        map.each { |pair| keys << pair[0] }
        keys
    end
end