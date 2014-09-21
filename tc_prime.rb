require 'test/unit'
require './prime'
 
class TestPrime < Test::Unit::TestCase


# test correct primes are generated
def test_generator()
  p = Prime.new(30)
  assert_equal([2,3,5,7,11], p.primes[0..4])
  assert_equal(10, p.primes.length)
end


end