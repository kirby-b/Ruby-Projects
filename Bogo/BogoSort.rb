class BogoSort
    def sort()
        numbers = [1,3,5,4,9,6,8,7,2,0]
        while (isSorted(numbers) == false)
            for x in 0...numbers.length()
                print numbers[x]
                numbers = numbers.shuffle()
            end
        end
        #Randomizes the list item positions until the list is sorted
        print("Sorted!")
    end
    def isSorted(nums)
        l = nums.length()
        for x in 0...(l-1)
            if nums[x] > nums[x + 1]
                return false
            end
        end
        return true
        #Checks if it is sorted
    end
end
b = BogoSort.new

b.sort()