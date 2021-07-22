// null safety can be disabled
// this is to suppress null safety @dart=2.9
import 'dart:io';

void main(){

  // Map of Maps
  var menu = {

    "burger":{
      "title": "Veggie Burger",
      "price": 100,
      "ratings": 4.5
    },

    "noodles":{
      "title": "Chillie Garlic Noodles",
      "price": 200,
      "ratings": 4.7
    },

  "dal":{
      "title": "Dal Makhani",
      "price": 250,
      "ratings": 3.7
    },

  "paneer":{
      "title": "Paneer Butter Masala",
      "price": 350,
      "ratings": 4.3,
    },


  };

  // Empty List
  var shoppingCart = [];

  int total = 0;
 
  while(true){
    print("Enter Dish to add or no to quit");
    var choice = stdin.readLineSync();

    if(choice == "no"){
      break;
    }

    if(menu.containsKey(choice)){
      shoppingCart.add(menu[choice]);
      total +=  menu[choice]!["price"] as int;
    }else{
      print("Sorry ${choice} is not available at the moment");
    }
  }

  print("SHOPPING CART: [${shoppingCart.length}]");
  print("TOTAL: \u20b9 ${total}");

  shoppingCart.forEach((element) {
    print(element);
  });

  print("FILTERED DISHES RATINGS > 4.2");
  /*for(var dish in shoppingCart){
    if(dish['ratings'] > 4.2){
      print(dish);
    }
  }*/
  var filteredDishes = shoppingCart.where((element) => element["ratings"]>4.2);
  print(filteredDishes);

  print("~~~~~~~~~~~~~~~~");
  var flatDiscount = 30;
  var discountedDishes = shoppingCart.map((element) => element["price"]-=flatDiscount);
  print(discountedDishes);
  

}