class BogoSort
    def sort
        numbers = [1,3,5,4,9,6,8,7,2,0]
        until is_sorted(numbers)
            (0...numbers.length).each { |x|
                print numbers[x]
                numbers = numbers.shuffle
            }
        end
        # Randomizes the list item positions until the list is sorted
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
        # Checks if it is sorted
    end
end
b = BogoSort.new

b.sort