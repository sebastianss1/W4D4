def my_uniq(arr)
    hash = Hash.new(0)
    arr.each { |ele| hash[ele] += 1}
    hash.keys
end 


def two_sum(arr)
    new_arr = []
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if idx2 > idx1 && ele1 + ele2 == 0
                new_arr << [idx1, idx2]
            end
        end 
    end 
    new_arr
end 

def my_transpose(arr)
    new_arr = Array.new(arr.length){Array.new}
    arr.each_with_index do |row, row_idx|
        arr.each_with_index do |col, col_idx|
            new_arr[row_idx] << arr[col_idx][row_idx] 
        end
    end
    new_arr
end

def stock_picker(arr)
    # min = arr.min 
    # max = arr.max
    # if arr.index(min) > arr.index(max)
    #     arr.delete(min)
    #     stock_picker(arr)
    # end
    # return [arr.index(min),arr.index(max)]
    max_arr = [arr[0], arr[1]]
    arr.each.with_index do |ele1, idx1|
        arr.each.with_index do |ele2, idx2|
            if idx2 > idx1 && max_arr[1] - max_arr[0] < arr[idx2] - arr[idx1]
                max_arr[0] = arr[idx1]
                max_arr[1] = arr[idx2]
            end
        end
    end
    [arr.index(max_arr[0]) + 1, arr.index(max_arr[1]) + 1 ]
end