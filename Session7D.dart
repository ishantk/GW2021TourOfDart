class Dish{

  // belongs to class
  static int numberOfItems = 0;
  static int dishes=0;

  // non static belongs to object
  String name;
  int price;
  int quantity;

  Dish({this.name="", this.price=0, this.quantity=1}){
    numberOfItems++;
  }

  void increment(){
    quantity++;
    dishes++;
  }

  void decrement(){
    quantity--;
    dishes--;
  }

  static void showNumberOfDishes(){
    print("NUM OF ITEMS: [${numberOfItems}]");
    print("DISHES: [${dishes}]");
  }

  @override
  String toString() {
    return "DISH: ${name} ${quantity} \u20b9${price*quantity}";  
  }

}

void main(){
  Dish dish1 = Dish(name: "Dal Makhani", price: 200);
  Dish dish2 = Dish(name: "Paneer Makhani", price: 300);
  Dish dish3 = dish1; // Reference Copy Operation

  dish1.increment(); // d1/d3: 2
  dish2.increment(); // d2: 2
  dish3.increment(); // d1/d3: 3

  dish1.increment(); // d1/d3: 4
  dish2.increment(); // d2: 3

  dish3.decrement(); // d1/d3: 3
  dish1.decrement(); // d1/d3: 2

  print(dish1); // 2
  print(dish2); // 3
  print(dish3); // 2

  Dish.showNumberOfDishes();

}

// HW: Explore mixins in Dart :)