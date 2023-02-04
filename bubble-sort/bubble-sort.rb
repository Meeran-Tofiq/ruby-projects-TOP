def bubble_sort(arr)
    counter = 1
    final_unsorted = -1
    item = 0
    next_item = 0

    while counter != arr.length
        arr[0..final_unsorted].length.times do |index|
            if arr[index+1]
                item = arr[index]
                next_item = arr[index + 1]

                if item > next_item
                    arr[index] = next_item
                    arr[index + 1] = item
                end

            end
        end

        counter += 1
        final_unsorted -= 1
    end

    arr
end

print bubble_sort([4,3,78,2,0,2, 6, 5, 7, 8, 99, 100, 98])