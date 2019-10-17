# Tasks from https://gist.github.com/dimasumskoy/2b917b7252dac0e957928af300f25449

# Task 1
def even_index(arr = [])
  arr.select.with_index { |el, index| index.even? } # index % 2 == 0
end

# Task 2
def hash_to_array(hsh = {})
  arr = [[], []]
  hsh.each do |key, value|
    arr[0].push(key)
    arr[1].push(value)
  end
  arr
end

# Task 3
def parse_string(str)
  return until str.is_a?(String)
  str.delete(' ').split('')
end

# Task 4
def str_to_hsh(str)
  return until str.is_a?(String)
  hsh = {}
  str.each_char { |c| hsh[c.to_sym] = str.count(c) }
  hsh
end

# Task 5
def zero_to_number(num)
  return until num.is_a?(Integer)
  (0..num).select { |n| n % 7 == 0 }
end

# Task 6
def sum_of_odd(numbers = [])
  numbers.select { |n| n.odd? }.reduce(:+)
end

# Task 7
def trans_keys(hsh = {})
  hsh.transform_keys(&:to_sym)
end

# Task 8
def discount(price, disc)
  # с учетом что скидка указывается в процентах
  price - price * disc / 100
end
