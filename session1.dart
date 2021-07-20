void main() {
  /*print("Hello");
  print("Be Exceptiona;");
  print("Search the candle, rather than cusring the darkness");
  
  
//   var age = 20;
//   int age = 20;
     Object age = 20;
  print("age is: ${age}");
  print("age is: "+age.toString());
  
  // Optionals
  //int? myAge;
  Object myAge = true;
  print("My Age is: ${myAge}");
  
  if (myAge == true){
    print("IF: myAge is: ${myAge}");
  }else{
    print("ELSE: myAge is: ${myAge}");
  }
  
  myAge = "John Watson";
  print("My Age is: ${myAge}");*/
  
  int age = 10;
  int siasAge = 10;
  
  age = 20;
  
  if (age>10){
    print("Buy a Tablet for the kid");
  }else{
    print("Do not Buy a Tablet for the kid");
  }
  
  String promoCode1 = "FLAT75";
  String promoCode2 = "HELLO150";
  
  // Give discount Flat 20% off but not more than 200 for amount > 300
  String promoCode3 = "BINGO";
  
  var amount = 1200.0;
  String promoCode = promoCode3;
  
  if(amount > 159 && promoCode == "FLAT75"){
    amount -= 75;
  }else if(amount > 199 && promoCode == "HELLO150"){
    amount -= 150;
  }else if(amount > 300 && promoCode == "BINGO"){
    var discount = 0.20 * amount;
    if(discount > 200){
      amount -= 200;
    }else{
      amount -= discount;
    }
  }else{
    print("An Invalid Promo Code");
  }
  
  print("Please Pay \u20b9 ${amount}");
  
  
  // Exploratory -> Samrt Water Bottle
  // Explore - Operators Once Again
  
}
