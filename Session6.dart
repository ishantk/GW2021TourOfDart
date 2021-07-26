/*
  Shoe
  id, name, brand, price, color, size, soleType

  TV
  id, name, brand, price, color, size, technology

  MobilePhone
  id, name, brand, price, color, size, ram, memory, isSdCardSlotAvailable
*/

// IS-A -> Inheritance

class Product{
  String? id, name, brand, color;
  int? size, price;

  Product({this.id, this.name, this.brand, this.color, this.size, this.price});

  Map toMap(){
    return {
      "id": id,
      "name": name,
      "brand": brand,
      "color": color,
      "size": size,
      "price": price,
    };
  }

  @override
  String toString() {
    return {
      "id": id,
      "name": name,
      "brand": brand,
      "color": color,
      "size": size,
      "price": price,
    }.toString();
  }
}

class Shoe extends Product{ // Shoe IS-A Product
  String? soleType;
  Shoe({this.soleType});
}

class TV extends Product{

  String? technology;
  TV({id, name, brand, color, size, price, this.technology}): super(id:id, name: name, brand: brand, color: color, size: size, price: price);
  
  @override
  String toString() {
    String parentData = "PARENT: " +super.toString();
    String myData = "\nCHILD: "+{
      "technology": technology,
    }.toString();

    return parentData + myData;
  }

}

class MobilePhone extends Product{
  int? ram, memory;
  bool? isSdCardSlotAvailable;

  MobilePhone({this.ram, this.memory, this.isSdCardSlotAvailable});
}

void main(){
  Product product = Product(
    id: "ID101",
    name: "iPhone",
    price: 80000,
    color: "black",
    size: 6,
    brand: "Apple"
  );

  print(product);

  TV tv = TV(
    brand: "Samsung",
    color: "Black",
    id: "LED101",
    name: "Samsung OLED TV",
    price: 50000,
    size: 50,
    technology: "OLED"
  );

  print(tv);
}