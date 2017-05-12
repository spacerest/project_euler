require 'mathn'

MAX = 200 

triangle = current = 1

until MAX < Prime.prime_division(triangle).inject(1){ |product, (_, factor)|
  product * (factor + 1)
}
  current  += 1
  triangle += current
end

puts triangle 
