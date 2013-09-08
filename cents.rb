
def cents_returner(cents, change, currency) 
  # if cents >= currency["FirstCoin"][1]
  #   change << currency["FirstCoin"][0]
  #   cents = cents - currency["FirstCoin"][1]
  # elsif cents >= currency["SecondCoin"][1]
  #   change << currency["SecondCoin"][0]
  #   cents = cents - currency["SecondCoin"][1]
  # elsif cents >= currency["ThirdCoin"][1]
  #   change << currency["ThirdCoin"][0]
  #   cents = cents - currency["ThirdCoin"][1]
  # elsif cents >= currency["FourthCoin"][1]
  #   change << currency["FourthCoin"][0]
  #   cents = cents - currency["FourthCoin"][1]
  # elsif cents == 0
  #   return change
  # end
  # return cents_returner(cents,change,currency)

  currency.each do |ary|
    if cents >= ary[1]
      change << ary[0]
      cents = cents - ary[1]
      return cents_returner(cents,change,currency)
    end  
    if cents == 0
      return change
    end  
  end
end
change = []
# Random_money = {"FirstCoin" => ["Zagat", 39], "SecondCoin" => ["Dingo", 20], "ThirdCoin" => ["Hooray", 9], "FourthCoin" => ["OneCent", 1]}
# American_money = {"FirstCoin" => ["Quarter",25], "SecondCoin" => ["Dime", 10], "ThirdCoin" => ["Nickel", 5], "FourthCoin" => ["Pennie", 1]}
American_money_money = [["Quarter",25], ["Dime", 10,], ["Nickel", 5], ["Pennie", 1]]
p cents_returner(20,change,American_money_money)





  

