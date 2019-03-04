# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.size == 0
    return nil
  end
  low_k = []
  low_v = []
  name_hash.each do |name, number|
    low_k.push(name)
    low_v.push(number)
  end
  low = low_v[0]
  for v in 0...low_v.size
    if low_v[v] < low
      low = low_v[v]
      lowest = low_k[v]
    end
  end
  return lowest

end
