def to_roman (number)
  string = "I" * number

  string.gsub("I" * 1000, "M").
    gsub("I" * 900, "CM").
    gsub("I" * 500, "D").
    gsub("I" * 400, "CD").
    gsub("I" * 100, "C").
    gsub("I" * 90, "XC").
    gsub("I" * 50, "L").
    gsub("I" * 40, "XL").
    gsub("I" * 10, "X").
    gsub("I" * 5, "V")

end 

puts to_roman(1345)
