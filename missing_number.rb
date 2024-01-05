n = readline.chomp.to_i
n = n * (n + 1) / 2
numbers = readline.chomp.split(' ').map(&:to_i)
numbers.each { |i| n -= i }
puts n
