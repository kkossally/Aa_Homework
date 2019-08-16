class Stack
    attr_accessor :pile
    def initialize
        @pile = []
    end
    
    def push(el)
        pile.push(el)
    end

    def pop
        pile.pop
    end

    def peek
        pile.last
    end
end