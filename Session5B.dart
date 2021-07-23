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

  // Method
  void showDish(){
    print("Dish Details: ${title} ${price}");
  }
}

void main() {
  
  Dish dish1 = new Dish(title: "Dal Makhani", price: 200);
  Dish dish2 = Dish(title: "Paneer Butter Masala", price: 300);
  
  Dish dish3 = Dish();

  print("dish1 is: "+dish1.hashCode.toString());
  print("dish2 is: "+dish2.hashCode.toString());
  
  dish1.showDish();
  dish2.showDish();
 
}