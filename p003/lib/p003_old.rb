#The prime factors of 13195 are 5, 7, 13 and 29.

#What is the largest prime factor of the number 600851475143 ?

class P003

  def initialize
    @possible_divisors
  end

  def say_hi
    'hi'
  end

  def prime?(number)
    @possible_divisors = possible_divisors(number)
    @prime = true
    @possible_divisors.each { |i|
      unless @prime == false
	number % i == 0 ? @prime = false : @prime = true 
      end
    }
    @prime
  end

  def possible_divisors(number)
    @number_halved = (number / 2).to_i + 1
    @possible_divisors = (2...@number_halved).to_a 
    @thing = []
    @possible_divisors.each { |i|
      prime?(i) ? @thing << i : false
    }
    @possible_divisors
  end

  def prime_factors_of(number)
    @prime_factors = []
    @possible_divisors = possible_divisors(number)
    if !prime?(number)
      
      @reduced_number = number
      until prime?(@reduced_number)

	@possible_divisors.each { |i|
      	if prime?(i) && @reduced_number % i == 0 
      	  @prime_factors << i
      	  @reduced_number /= i
      	  if !prime?(@reduced_number)
      	      @prime_factors << i
	      @reduced_number /= i 
      	  end
      	end	   
      	}
      end
    end
    @reduced_number && @reduced_number != 1 ? @prime_factors << @reduced_number : false
    @prime_factors
  end

  def maximum_prime_factor_of(number)
    @prime_factors = prime_factors_of(number)
    @prime_factors.max
  end
  

end
