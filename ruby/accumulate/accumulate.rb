module Accumulate

  refine Array do

    def accumulate(&block)
      result = []

      each do |item|
        result << block.call(item)
      end

      result
    end

  end

end

module BookKeeping
  VERSION = 1
end
