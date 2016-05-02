# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

class P001

  def define_natural_number
    @definition = 'a whole number zero and up'
    @definition
  end

  def list_naturals_under(highest)
    (0...highest).to_a 
  end

  def list_multiples_under(array_of_multiples, highest)
    @naturals_under_highest = list_naturals_under(highest)
    @multiples = []
    array_of_multiples.each { |multiple|
      @naturals_under_highest.each { |i|
        if i != 0 && i % multiple == 0 && @multiples.index(i) == nil
          @multiples << i
        end
      }
    }
    @multiples
  end

  def sum_of_multiples_under(array_of_multiples, highest)
    @multiples = list_multiples_under(array_of_multiples, highest)
    @sum_total = 0
    @multiples.each { |i| @sum_total += i }
    @sum_total
  end


end
