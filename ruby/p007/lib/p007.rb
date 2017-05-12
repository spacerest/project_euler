#By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

#What is the 10 001st prime number?

class P007

  def say_hi
    'hola'
  end

  def is_prime?(number)
    (2..number/2).none? { |i| number % i == 0 }
  end

  def nth_prime(n)
    @count = 0
    @potential_prime = 2
    while @count < n
    if is_prime?(@potential_prime) 
      @nth_prime = @potential_prime
      puts "#{@nth_prime}"
      @count += 1
    end
    @potential_prime += 1
    end
    @nth_prime
  end
      

    
end
