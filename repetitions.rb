dna = readline.chomp.to_s

last = 'x'
count = 1
max = 1
dna.length.times do |i|
  if last == dna[i]
    count += 1
  else
    count = 1
    last = dna[i]
  end

  max = [count, max].max
end

puts max
