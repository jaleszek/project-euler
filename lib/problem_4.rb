# A palindromic number reads the same both ways.
# The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

def is_palindrom?(number)
  number == number.to_s.reverse.to_i
end

def only_possible(range)
  # palindrom % 11 always equal 0
  range.step(11).to_a
end

def find_palindrom
  searching_range, max_val = (110..999), 0
  only_possible(searching_range).reverse.each do |x|
    searching_range.last.downto(x).each do |y|
      product = x*y
      max_val = product and break if is_palindrom?(product) && product > max_val
    end
  end
  max_val
end

p find_palindrom