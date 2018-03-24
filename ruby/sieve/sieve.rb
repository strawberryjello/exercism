class Sieve
  def initialize(n)
    @sieve_range = (2..n)
    @limit = n
  end

  def primes
    ary = @sieve_range.to_a
    ary.each { |i| ary -= multiples_of(i) }
    ary
  end

  private
    def multiples_of(x)
      (x**2..@limit).step(x).to_a
    end
end

module BookKeeping
  VERSION = 1
end
