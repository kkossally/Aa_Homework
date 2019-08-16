class Stack
    def initialize
        pile = []
    end
    
    def push(el)
        pile.push(el)
    end

    def pop
        pile.pop(el)
    end

    def peek
        pile.last
    end
end