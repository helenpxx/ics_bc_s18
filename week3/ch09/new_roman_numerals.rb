#I = 1 V = 5 X = 10 L = 50
#C = 100 D = 500 M = 1000

def new_roman_numeral num
    roman = ""
      if num == 400
        roman = "CD"
      elsif num == 40
        roman = "XL"
      elsif num == 4
        roman = "IV"
      elsif num == 9
        roman == "IX"
      elsif num == 90
        roman == "XC"
      elsif num == 900
        roman == "CM"
      end
      roman += "M" * (num/1000)
      roman += "D" * ((num%1000)/500)
      roman += "C" * ((num%500)/100)
      roman += "L" * ((num%100)/50)
      roman += "X" * ((num%50)/10)
      roman += "V" * ((num%10)/5)
      roman += "I" * ((num%5)/1)
  puts roman
  end
