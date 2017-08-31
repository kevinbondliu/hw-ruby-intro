# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  if arr.empty?
    sum = 0
  else 
    sum = arr.reduce(:+)
  end
  return sum
end

def max_2_sum arr
  if arr.empty?
    sum = 0
  else
    sum = arr.sort.last(2).reduce(:+)
  end
  return sum
end

def sum_to_n? arr, n
  if arr.empty? || arr.length == 1
    return false
  else
    for i in arr
      diff = n - arr[i].to_i
      arr[i] = 0
      if arr.include? diff
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  return ("Hello, " + name)
end

def starts_with_consonant? s
  if s.empty?
    return false
  elsif s[0] =~ /\A[^a-z]/i
    return false
  elsif s[0] =~ /\A[^aeiou]/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if(s.delete('01') != '' || s.empty?)
    return false
  end
  converted = s.to_i(2)
  if converted % 4 === 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError if isbn.length == 0
    raise ArgumentError if price <= 0 
    @isbn = isbn
    @price = Float(price)
  end
  
  def isbn
    return @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    return @price
  end

  def price=(price)
    @price = price
  end

  def price_as_string
    return "$%0.2f" % @price
  end




end
