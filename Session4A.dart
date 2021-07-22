void main(){

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

  menu.forEach((element) {
    print(element["title"]);
  });

  print(menu.first);
  print(menu.last);
}