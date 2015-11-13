# Given an integer, convert it to a roman numeral.

# Input is guaranteed to be within the range from 1 to 3999.

#Method 1:
def int_to_roman(num)
    if num == nil || num == 0
        return num
    end
    romans = {"M"=>1000, "CM"=>900, "D"=>500, "CD"=>400, "C"=>100, "XC"=>90, "L"=>50, "XL"=>40, "X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1}
    result = ""
    
    romans.each do |key, val|
        result += key * (num / val)
        num -= (num / val) * val        
    end
    
    return result
end

#Method 2:
def int_to_roman(num)
    if num >= 1000
        return "M" + int_to_roman(num - 1000)
    elsif num >= 900
        return "CM" + int_to_roman(num - 900)
    elsif num >= 500
        return "D" + int_to_roman(num - 500)
    elsif num >= 400
        return "CD" + int_to_roman(num - 400)
    elsif num >= 100
        return "C" + int_to_roman(num - 100)
    elsif num >= 90
        return "XC" + int_to_roman(num - 90)
    elsif num >= 50
        return "L" + int_to_roman(num - 50)
    elsif num >= 40
        return "XL" + int_to_roman(num - 40)
    elsif num >= 10
        return "X" + int_to_roman(num - 10)
    elsif num >= 9
        return "IX" + int_to_roman(num - 9)
    elsif num >= 5
        return "V" + int_to_roman(num - 5)
    elsif num >= 4
        return "IV" + int_to_roman(num - 4)
    elsif num >= 1
        return "I" + int_to_roman(num - 1)
    end
    
    return ""
end