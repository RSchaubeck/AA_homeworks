class Stack

    attr_reader :stack

    def initialize(stack)
      # create ivar to store stack here!
      @stack = stack
    end

    def push(el)
      # adds an element to the stack
        @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack.last
    end
  end

#   s = Stack.new([1,2,3,4,5])
#   s.push(6)
#   p s.pop
#   p s.peek
#   p s.stack
  
