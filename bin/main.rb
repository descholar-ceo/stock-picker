#!/usr/bin/env ruby
require './lib/messages'
require './lib/stock'

class StockPicker < Stock
  def initialize
    @stock_prices = []
  end

  def start
    puts Messages::STOCKPICKER_LOGO
    puts Messages::WELCOME_MESSAGE
    return unless continue?

    interested = true
    while interested
      @stock_prices = []
      user_enters_prices
      show_results
      interested = false unless continue?
    end
  end

  def user_enters_prices
    puts Messages::ENTER_SET_OF_DAY_PRICES
    user_inputs = gets.chomp.split(',')
    user_inputs.each { |current| @stock_prices << current.to_i }
  end

  def show_results
    puts "\nA good day to buy is the #{analyze_stock_prices(@stock_prices)[0] + 1}th day"
    puts "A good day to sell is the #{analyze_stock_prices(@stock_prices)[1] + 1}th day"
  end

  def continue?
    puts Messages::WANT_CONTINUE
    continue_value = gets.chomp.downcase
    return true if continue_value == 'y'

    false
  end
end

stock = StockPicker.new
stock.start
