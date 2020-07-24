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
        while interested do
            user_enters_prices
            show_results
            interested = false unless continue?
        end
    end

    def user_enters_prices
        puts "\nEnter the array which repesents your prices:"
        @stock_prices = gets.chomp
    end

    def show_results
        puts @stock_prices
    end

    def continue?
        puts 'Do you want to continue? If you want to continue enter y otherwise enter any other key to terminate the STOCKPICKER!'
        continue_value = gets.chomp.downcase
        return true if continue_value == 'y'

        false
    end
end

stock = StockPicker.new
stock.start
