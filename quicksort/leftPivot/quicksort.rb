inputArray = IO.readlines('../QuickSort.txt')

inputArray = inputArray.map do |i|
  i.to_i
end

def quicksort(a, l, r)
  num = 0

  if l < r 
    q = partition(a, l, r)
    num += r - l
    num += quicksort(a, l, q-1)
    num += quicksort(a, q+1, r)
  end
  return num
end

def partition(a, l, r)
  p = a[l]
  i = l 

  (l+1..r).each do |j|
    if a[j] < p
      i += 1

      #swap
      temp = a[i]
      a[i] = a[j]
      a[j] = temp
    end
  end

  temp = a[i]
  a[i] = a[l]
  a[l] = temp

  return i
end

puts "Comparisons: " + quicksort(inputArray, 0, inputArray.length-1).to_s

puts inputArray.inspect
