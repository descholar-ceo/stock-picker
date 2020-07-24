class Stock
  def initialize; end

  def analyze_stock_prices(stock_prices_arr)
    stock_length = stock_prices_arr.length
    results_hash = {}
    stock_prices_arr.each do |current_element|
      i = 1
      while i < stock_length - stock_prices_arr.find_index(current_element)
        difference = stock_prices_arr[-i] - current_element
        if difference.positive?
          days_arr = [stock_prices_arr.find_index(current_element), stock_prices_arr.find_index(stock_prices_arr[-i])]
          results_hash[days_arr] = difference
        end
        i += 1
      end
    end
    res = results_hash.max_by { |_k, v| v }
    res[0]
  end
end
