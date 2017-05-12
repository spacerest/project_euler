#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?


class P003

  def is_prime?(number)
    (2..number/2).none? { |i| number % i == 0 }
  end

  def prime_factors_of(number)
    @prime_factors = []
    @reducible_number = number
    (2...(@reducible_number/2 +1)).each { |i|
      if @reducible_number % i == 0 && is_prime?(i) 
	@prime_factors << i
	@reducible_number /= i
	puts "one factor of #{number} is #{i}, down to #{@reducible_number}"
      elsif @reducible_number == 1
	break
      else 
	false
      end
    }    
    @prime_factors
  end

  def max_prime_factor_of(number)
    prime_factors_of(number).max
  end


end
