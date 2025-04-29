class CalculatorController < ApplicationController
  def square_calc
    render({:template => "calc_templates/square_calc"})
  end
  def square_results
    @the_num = params.fetch("users_number")

    @the_result = @the_num.to_f ** 2
    render({:template => "calc_templates/square_results"})
  end

  def square_root_calc
    render({:template => "calc_templates/square_root_calc"})
  end
  def square_root_results
    @the_num = params.fetch("users_number")

    @the_result = @the_num.to_f ** 0.5
    render({:template => "calc_templates/square_root_results"})
  end

  def random_calc
    render({:template => "calc_templates/random_calc"})
  end
  def random_results
    @min = params.fetch("user_minimum").to_f
    @max = params.fetch("user_maximum").to_f
  
    @the_result = rand(@min..@max)
    render({:template => "calc_templates/random_results"})
  end

  def payment_calc
    render({:template => "calc_templates/payment_calc"})
  end
  def payment_results
    @APR = params.fetch("user_APR").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_principal").to_f
  
    @numerator = (@APR/100/12) * @principal
    @denominator = 1 - ((1+(@APR/100/12)) ** (-1 * @years * 12))
  
    @the_result = (@numerator/@denominator).to_f
    render({:template => "calc_templates/payment_results"})
  end
end
