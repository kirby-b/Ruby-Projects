class BogoSort
    # A bogo sort is a purposefully bad sorting algorithm that randomizes a list until it is sorted.
    def sort
        numbers = [1,3,5,4,9,6,8,7,2,0]
        until is_sorted(numbers)
            (0...numbers.length).each { |x|
                print numbers[x]
                numbers = numbers.shuffle 
                # Shuffles the indexs of numbers with the hope it sorts itself.
            }
        end
        print("Sorted!")
    end
    def is_sorted(nums)
        l = nums.length
        (0...(l - 1)).each { |x|
            if nums[x] > nums[x + 1]
                return false
            end
        }
        true
        # Checks if it is sorted by going through the
        # list and compares each index
    end
end
b = BogoSort.new # Makes a new instance so you can
                # actually call the bogo sort functions

b.sort