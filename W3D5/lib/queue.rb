class Queue

    def initialize(queue)
        @queue = queue
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

end

# q = Queue.new([1,2,3,4,5])
# q.enqueue(6)
# p q
# q.dequeue
# p q
# p q.peek