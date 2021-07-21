// MODEL for Apps
// Data Representation as Map and List

/*
  MODEL
    deals with data -> DATA STRUCTURES
    1. Single Value Container
    2. Multi Value Container
    3. Objects -> User Defined

  VIEW
    deals with UI
    1. Command Line
    2. Web/Mobile/Desktop
    3. Conversational

  CONTROLLER
    Logic -> ALGORITHM
    1. Operators -> Computation
    2. Logcial Decisions -> if/else and switch case
    3. Iteraions -> Loops, for while and do while

*/

void main(){

  var restaurant = {
    'name': 'Mc Donalds',
    'categories': ["Burger", "Fast Food", "Beverages"],
    'timeToDeliver': 30,
    'ratings': 4.5,
  };

  var dish1 = {
    'title': 'Veggie Burger',
    'price': 200
  };

  var dish2 = {
    'title': 'Noodles',
    'price': 100
  };

  var dish3 = {
    'title': 'Mc Spicy Burger',
    'price': 250
  };

  var dish4 = {
    'title': 'Coke',
    'price': 50
  };

  var dish5 = {
    'title': 'Fries',
    'price': 80
  };

  var menu = [
    dish1,
    dish2,
    dish3,
    dish4,
    dish5
  ];

  restaurant['menu'] = menu;

  print(restaurant);

  print("@@@@@@@@@@@@");

  for(int i=0;i<menu.length;i++){
    print(menu[i]);
  }

}

// https://www.covid19india.org/
// Apply a logic to sort the data as per number of cases in states