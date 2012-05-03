inputArray = IO.readlines('../QuickSort.txt')

inputArray = inputArray.map do |i|
  i.to_i
end

def quicksort(a, l, r)
  if l < r 
    q = partition(a, l, r)
    quicksort(a, l, q-1)
    quicksort(a, q+1, r)
  end
end

def partition(a, l, r)
  p = a[l]
  i = l + 1

  (l..r).each do |j|
    if a[j] < p
      i += 1

      #swap
      temp = a[i]
      a[i] = a[j]
      a[j] = temp
    end
  end

  i += 1

  temp = a[i]
  a[i] = a[r]
  a[r] = temp

  return i
end

quicksort(inputArray, 0, inputArray.length-1)

puts inputArray.inspect


