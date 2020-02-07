class Map

    def initialize(two_d_arr)
        @our_map = two_d_arr
    end

    def set(key, value)
        @our_map.each do |subarr|
            subarr.each do |el|
                return subarr[1] = value if subarr[0] == key
            end
        end
        @our_map << [key, value]
    end

    def get(key)
        @our_map.each do |subarr|
            subarr.each { return subarr if key == subarr[0] }
        end
    end

    def delete(key)
        @our_map.each do |subarr|
            subarr.each { @our_map.delete(subarr) if key == subarr[0] }
        end
    end

    def show
        @our_map
    end
end

# m = Map.new([['hello', 'world'], ['foo', 'bar'], ['new', 'york'], [1,2]])
# m.set('hello', 'universe')
# p m.show
# m.set(3,6)
# p m.show
# p m.get('new')
# p m.delete('foo')
