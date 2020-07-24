class Stock
  def initialize; end

  def analyze_stock_prices(stock_prices_arr)
    stock_length = stock_prices_arr.length
    results_hash = {}
    stock_prices_arr.each do |current_element|
      i = 1
      while i < stock_length - (stock_prices_arr.find_index(current_element)) do
        difference = stock_prices_arr[-i] - current_element
        # puts "i = #{i}"
        if difference > 0
            days_arr = [stock_prices_arr.find_index(current_element), stock_prices_arr.find_index(stock_prices_arr[-i])]
            results_hash[days_arr] = difference
        end
        i += 1
      end
    end
    res = results_hash.max_by { |k,v| v }
    return res[0]
    #
    #     get the array
    #     create a hash result to compare
    #     create days array=[]
    #
    #     # analyze the array
    #     on each element do
    #         i = 0
    #         while i<array.length-index of current element-1
    #             if the difference is positive
    #                     add current element to the days array
    #                     add the next element to the days array
    #                     add the differnce result as value and days array as key on the
    #             else
    #                 next
    #             end if
    #             i++
    #         end while
    #     end each
    #
    #     # analyze the hash
    #     return the pair which has the max value
  end
end
