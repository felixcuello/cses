# frozen_string_literal: true

n = readline.strip.to_i

while n != 1
  print "#{n} "
  n = n.even? ? (n / 2) : (n * 3 + 1)
end
puts '1'
