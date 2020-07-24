#!/usr/bin/env ruby

require './lib/stock'

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
    puts "\nEnter the set of your prices written in this way 100, 200, 500: "
    user_inputs = gets.chomp.split(',')
    user_inputs.each { |current| @stock_prices << current.to_i }
  end

  def show_results
    stock = Stock.new
    puts stock.analyze_stock_prices(@stock_prices)
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
