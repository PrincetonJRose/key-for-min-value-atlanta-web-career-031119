# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash.size == 0
    return nil
  end
  low_key = []
  low_value = []
  name_hash.each do |name, number|
    low_key.push(name)
    low_value.push(number)
  end
  low = low_value[0]
  for val in 0...low_value
    if low_value[val] < low
      low = low_value[val]
      lowest = low_key[val]
    end
  end
  return lowest

end
