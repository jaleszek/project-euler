#!/usr/bin/env ruby

# The first known prime found to exceed one million digits was discovered in 1999,
# and is a Mersenne prime of the form 269725931; it contains exactly 2,098,960 digits.
# Subsequently other Mersenne primes, of the form 2p1, have been found which contain more digits.
# However, in 2004 there was found a massive non-Mersenne prime which contains
# 2,357,207 digits: 2843327830457+1.
# Find the last ten digits of this prime number.

digits = Array.new(10, 0)
digits[0] = 1

7830457.times do |i|
  carry = 0
  digits.each_with_index do |a, j|
    product = digits[j] * 2
    digits[j] = product % 10 + carry
    carry = product / 10
  end
end

p (digits.join.reverse.to_i*28433+1).to_s.reverse[0..9].reverse