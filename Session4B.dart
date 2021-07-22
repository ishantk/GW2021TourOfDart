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

  print(menu.length);
  menu.forEach((key, value) {
    print(key);
    //print(value);
    value.forEach((key, value) {
      print(value);
    });
  });

  var data = stdin.readLineSync();
  print("data is: ${data} and its type is: ${data.runtimeType}");

}