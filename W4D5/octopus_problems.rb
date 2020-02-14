require "byebug"

def sluggish_octopus(arr)
    holder = ""
    arr.each_with_index do |fish, i1|
        arr.each_with_index do |other_fish, i2|
            if i2 > i1 
                holder = fish if fish.length > other_fish.length && fish.length > holder.length
            end
        end
    end
    holder
end


def clever_octopus(arr)
    holder = ""
    arr.each do |word|
        holder = word if word.length > holder.length
    end
    holder
end

  a = ['fish', 'fiiish', 'fiiiiish','fiiiissshhhhhh', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh']
p clever_octopus(a)