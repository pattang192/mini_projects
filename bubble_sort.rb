# bubble_sort.rb

def bubble_sort(array)
  n = array.size
  i = 0
  sorted = false
  while sorted == false
    sorted = true
    for i in 1..n - 1
      if array[i - 1] > array[i]
        array[i - 1], array[i] = array[i], array[i - 1]
        sorted = false
      end
    end
  end
  p array
end

bubble_sort([4, 3, 78, 2, 0, 2])
