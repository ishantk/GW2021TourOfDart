/*

  // OOPS

  What is an Object ?
    It is a Multi Value Container
    can be homogoneous or hetrogeneous

    so that we can perform customizations

  What is a Class ?
    Textual Representation of an Object
    we will code an Object as Class :)

  Principle of OOPS:
    1 -> attributes | think of data associated with object
    2 -> class      | create its textual representation
    3 -> object     | from the class create a real object in memory

  Zomato
    Restaurant
      name, phone, email, address, ratings, operatingHours, menu

    Menu
      title, numOfDishes, dishes

    Dish  
      title, price

    Customer
      name, phone, email, address, orders

    Order
      oid, date, time, dishes, total, customer 

    Objects are Related
      HAS-A
        1 to 1
        1 to *
        * to 1
        * to *  

      Done with the help of reference copy :)     

*/

// Structure of Object
// MODEL 
class Dish{
  // Attributes 
  // Belongs to Object :)
  String? title;
  int? price;

  Dish({this.title, this.price});

  // Constructor:
  // It is used to give initial values to attributes
  /*Dish({String title="NA", int price=0}){
    // LHS: this.title -> represent title attribute of object
    // RHS: title is input of the constructor

    // this is a reference variable which holds the hashcode of current object
    this.title = title;
    this.price = price;
    print("this is:"+this.hashCode.toString());
  }*/

  void setTitle(String title){
    this.title = title;
  }

  void setPrice(int price){
    this.price = price;
  }

  String getTitle(){
    return title!;
  }

  int getPrice(){
    return price!;
  }

  // Method
  void showDish(){
    print("-------------------------");
    print("Dish: ${title}\n\u20b9${price}");
    print("-------------------------");
  }
}

class Menu{
    String? title;
    int? numOfDishes; 
    List<Dish>? dishes; // 1 to many

    Menu({this.title, this.numOfDishes, this.dishes});

    void showMenu(){
      print("MENU DETAILS");
      print("~~~~~~~~~~~~");

      print("Title ${title} [${numOfDishes}]");

      dishes!.forEach((dish) {
        dish.showDish();
      });

    }
}

class Restaurant{
    String? name, phone, email, address, operatingHours;
    double? ratings;
    Menu? menu; // 1 to 1
    Restaurant({this.name, this.phone, this.email, this.address, this.ratings, this.operatingHours, this.menu});

    void showRestaurant(){
      print("#######################");
      print("${name} ${ratings}\n${operatingHours}\n${address}");
      print("#######################");

      menu!.showMenu();
    }
}

void main() {
  
  /*Dish dish1 = new Dish(title: "Dal Makhani", price: 200);
  Dish dish2 = Dish(title: "Paneer Butter Masala", price: 300);
  
  Dish dish3 = Dish();
  dish3.title = "Noodles";
  dish3.price = 15;

  print("dish1 is: "+dish1.hashCode.toString());
  print("dish2 is: "+dish2.hashCode.toString());
  
  dish1.showDish();
  dish2.showDish();
  */

  //var dishes = <Dish>[dish1, dish2, dish3];
  //Menu menu = Menu(title: "Veggie Delight", dishes:  <Dish>[dish1, dish2, dish3], numOfDishes: 3);
  //Menu menu = Menu(title: "Veggie Delight", dishes:  <Dish>[Dish(title: "Dal Makhani", price: 200), dish2, dish3], numOfDishes: 3);
  
  /*Menu menu = Menu(
    title: "Veggie Delight", 
    dishes:  <Dish>[
      Dish(
        title: "Dal Makhani", 
        price: 200
        ), 
      Dish(
        title: "Paneer Butter Masala", 
        price: 300
        ), 
      Dish(
        title: "Noodles", 
        price: 150
        )
      ], 
      numOfDishes: 3
  );

  menu.showMenu();*/

  Restaurant(
    name: "Johns Cafe Shop",
    phone: "+91 161 555555",
    email: "john.cafe@example.com",
    operatingHours: "10:00 to 20:00",
    ratings: 4.5,
    address: "Model Town",
    menu: Menu(
      title: "Veggie Delight",
      numOfDishes: 3,
      dishes: <Dish>[
      Dish(
        title: "Dal Makhani", 
        price: 200
        ), 
      Dish(
        title: "Paneer Butter Masala", 
        price: 300
        ), 
      Dish(
        title: "Noodles", 
        price: 150
        )
      ], 
    )
  ).showRestaurant();
    

 
}