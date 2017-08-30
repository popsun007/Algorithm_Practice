# note we've re-opened array
class Array
  # 'flatten'
  def nettalf    
    result = []
    self.each do |elem|
      if elem.class != Array
        result << elem
      else
        flattened_elem = elem.nettalf
        result += flattened_elem
      end
    end
    result
  end
end

class Foo
  def flatten
    puts "I don't get called"
  end
end

a = [1, 2, 3, [4, 5]]
puts "Flatten: #{a.flatten}"
puts "Nettalf: #{a.nettalf}"

b = [[1, 2], [3, 4], nil, [4, 5]]
puts "Flatten: #{b.flatten}"
puts "Nettalf: #{b.nettalf}"

c = [[1, [2, 3, Foo.new]], [4, { foo: Foo.new } ], [[[5]]]]
puts "Flatten: #{c.flatten}"
puts "Nettalf: #{c.nettalf}"

#1. loop through every element
#2. until, there is no more array at that position
#3. push element into a result array
#4. return the result array