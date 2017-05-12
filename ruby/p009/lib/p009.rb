## A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
## 
## a2 + b2 = c2
## For example, 32 + 42 = 9 + 16 = 25 = 52.
## 
## There exists exactly one Pythagorean triplet for which a + b + c = 1000.
## Find the product abc.

class P009

  def say_hi
    'hi'
  end

  def find_c(a, b)
    Math.sqrt(a**2 + b**2) 
  end

  def find_triplets(sum)
    @possible_triplets = []
    (1..(sum - 2)).each { |a|
      (1..(sum - a)).each { |b|
	(1..(sum - a - b)).each { |c|
	  if a + b + c == sum && a < b && b < c
	    @possible_triplets << [a, b, c]
	  end 
	}
      }
    }
    @possible_triplets.each { |i|
      a, b, c = i[0], i[1], i[2]
      a**2 + b**2 == c**2 ? @pyth_trip = [a, b, c] : false
     }
    @pyth_trip
  end

  def product_of_triplets(sum)
    @product = 1
    find_triplets(sum).each { |i| @product *= i }
    @product
  end

end
