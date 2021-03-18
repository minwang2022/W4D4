def my_uniq(arr)
    new_array = []
    arr.each { |el| new_array << el if !new_array.include?(el)}
    new_array
end