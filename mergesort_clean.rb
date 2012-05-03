inputArray = [2, 7, 1, 3, 4, 5, 6, 9, 8, 9, 10]
SENTINEL = 9999999^9999

def merge_sort(a, p, r)
  if p < r
    q = (p + r)/2

    merge_sort(a, p, q)
    merge_sort(a, q+1, r)
    merge(a, p, q, r)
  end

  return a
end

def merge(a, p, q, r)
  left = a[p..q]
  right = a[q+1..r]

  left.push(SENTINEL)
  right.push(SENTINEL)

  i = 0
  j = 0

  (p..r).each do |n| 
    if left[i] < right[j]
      a[n] = left[i]
      i += 1
    elsif (right[j] != SENTINEL)
      a[n] = right[j]
      j += 1
    end
  end
end

puts merge_sort(inputArray, 0, inputArray.length).inspect



