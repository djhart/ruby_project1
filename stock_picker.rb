def stock_picker(arr)
    a,b,c = 0
    arr.map.with_index {|x,i| arr.map.with_index{|y,j| if ((y-x) > a && j > i)  
        a,b,c = y-x,i,j
    end}}
    puts "profit:", a
    return [b,c]
    
end

stock_picker([17,3,6,9,15,8,6,1,10])