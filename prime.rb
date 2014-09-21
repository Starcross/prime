
class Prime
  attr_accessor :primes
  
  def initialize(limit=30)

    @limit = limit
    @primes = gen_primes()
       
  end


  def gen_primes()
  # return a list of prime numbers up to specified limit
  # using Eratosthenes' Sieve

    # generate an array of odd numbers greater than 1
    sieve = (3..@limit).step(2).to_a

    for factor in sieve

      for i in sieve

        # ignore values smaller than factor
       if (i <= factor) 
         next
        end

        # remove composites of factor from array
        if i % factor == 0 
          sieve.delete(i)
        end

      end 

    end

    # add 2 as we ignored even numbers
    return [2] + sieve

  end
  

  def print_primes(multiplier)

    # print tabulated list of prime array
    for i in @primes
      print i*multiplier, "\t"
    end 
    print "\n"

  end


  def print_product_table()

    # print column of primes and their products
    print "\t"  
    print_primes(1)
    for m in @primes
      print m, "\t"
      print_primes(m)
    end

  end


end

p = Prime.new()
p.print_product_table()
