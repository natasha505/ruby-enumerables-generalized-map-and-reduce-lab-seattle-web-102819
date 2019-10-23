 
def map(source_array)
  new_array = []
  i = 0 
  while i < source_array.length 
    new_array.push(yield(source_array[i]))
    i += 1 
  end
new_array
end

reduce([1,23])

def reduce(array, starting_point=nil)
  if starting_point
    returned_value = starting_point
    i = 0
  else
    returned_value = array[0]
    i = 1
  end
  while i < array.length
    returned_value = yield(returned_value, array[i])
    i += 1
  end
  returned_value
end
