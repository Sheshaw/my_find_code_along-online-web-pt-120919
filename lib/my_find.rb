require 'pry'

collection = (1..100).to_a

def my_find(collection)
  i = 0
  while i < collection.length
    return collection[i] if yield(collection[i])
    i += 1
  end
end

puts my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }

def other_find(collection)
  array = []
  i = 0
  while i < collection.length
    array.push(collection[i]) if yield(collection[i])
    i = i + 1
  end
  array
end


puts other_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }