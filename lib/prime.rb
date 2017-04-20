class Fixnum
  define_method(:prime) do
      start_equals = self
      prime_range = (2..start_equals)

      prime_array = []
      prime_range.each() do |number|
        prime_array.push(number)
      end

      prime = 2
    until prime == start_equals
      prime_array.delete_if{|number| number%prime==0&&number!=prime}
      prime +=1
    end
    prime_array
  end
end
