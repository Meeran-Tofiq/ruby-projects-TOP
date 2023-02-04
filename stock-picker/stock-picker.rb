
def stock_picker(stocks)
    best_combo = 0
    res = []

    stocks.each_with_index do |buy, i|
        stocks[i..-1].each do |sell|
            if sell - buy > best_combo
                best_combo = sell - buy
                res = [i, stocks.index(sell)]
            end
        end
    end

    res

end

print stock_picker([17,3,6,9,15,8,6,1,10])