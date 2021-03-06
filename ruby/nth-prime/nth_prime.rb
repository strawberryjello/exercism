class Prime

  FIRST = 2

  def self.nth(n)
    raise ArgumentError if n < 1

    candidate = FIRST
    primes = []
    prime_counter = 0

    while prime_counter < n
      if self.is_prime?(candidate)
        primes << candidate
        prime_counter += 1
      end
      candidate += 1
    end

    return primes[n-1]
  end

  private
    def self.is_prime?(x)
      (FIRST..Math.sqrt(x).floor).none? { |i| x.modulo(i) == 0 }
    end

end

module BookKeeping
  VERSION = 1
end
