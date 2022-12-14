# frozen_string_literal: true

# class FormsController
class FormsController < ApplicationController
  def form; end

  attr_accessor :input
  attr_reader :result_m

  def prime?(num)
    return true if num == 2
    return false if num < 2 || num != num.to_i

    (2...(Math.sqrt(num) + 1)).none? { |i| (num % i).zero? }
  end

  def mersenne?(num)
    prime?(num) && prime?(Math.log(num + 1, 2))
  end

  def mersenne_to_n(num)
    (2...num).select { |i| mersenne?(i) }
  end

  def result
    @input = params[:num].to_i # unless params[:one].blank? && params[:two].blank?
    @result_m = mersenne_to_n(@input)
    @p_result = @result_m.map { |n| Math.log(n + 1, 2).to_i }
  end

  
end
