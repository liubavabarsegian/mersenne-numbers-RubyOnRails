# frozen_string_literal: true

# To controle form
class ResultsController < ApplicationController
    def is_prime?(n)
        return true if n == 2
        return false if n < 2 || n != n.to_i
        (2...(Math.sqrt(n) + 1)).none? {|i| n % i == 0}
    end
    
    def is_mersenne?(n)
        
        is_prime?(n) && is_prime?(Math.log(n + 1, 2))
    end
    
    def mersenne_to_n(n)
        (2...n).select{|i| is_mersenne?(i)}
    end

    def result
        @input = params[:num].to_i
        @result = mersenne_to_n(@input)
        @p_result = @result.each{|n| Math.log(n + 1, 2)}
    end
end
