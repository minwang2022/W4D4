def my_uniq(arr)
    # new_array = []
    # arr.each { |el| new_array << el if !new_array.include?(el)}
    # new_array
    arr.uniq
end


class Array
    def to_sum
        new_arr = []

        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                new_arr << [i,j] if self[i] + self[j] == 0
            end
        end
        new_arr
    end

end