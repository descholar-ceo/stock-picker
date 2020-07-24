#!/usr/bin/env ruby
class StockPicker
  def initialize
    @stock_prices = []
  end

  def start
    puts 'Hello there, welcome to the STOCKPICKER software, this software helps you identify which day is best to sell
        and which day is best to buy!'
    return unless continue?

    interested = true
    while interested
      user_enters_prices
      show_results
      interested = false unless continue?
    end
  end

  def user_enters_prices
    puts "\nEnter the array which repesents your prices:"
    @stock_prices = gets.chomp
  end

  def analyze_stock_prices
    value = @stock_prices.max_by {|x| x.length}
    return value
    
=begin

    get the array
    create a hash result to compare
    create days array=[]

    # analyze the array
    on each element do
        i = 0
        while i<array.length-index of current element-1
            if the difference is positive
                    add current element to the days array
                    add the next element to the days array
                    add the differnce result as key and days array as value on the
            else
                next
            end if
            i++
        end while
    end each

    # analyze the hash
    on each pair of the hash
        if k
    end each
=end
  end

  def show_results
    puts analyze_stock_prices
  end

  def continue?
    puts 'Do you want to continue? If you want to continue enter y otherwise enter any other key
    to terminate the STOCKPICKER!'
    continue_value = gets.chomp.downcase
    return true if continue_value == 'y'

    false
  end
end

stock = StockPicker.new
stock.start
