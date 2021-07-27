class Cab{

  int baseFare = 100;

  void bookCab(String sourceLocation, String destinitionLocation){
    print("Cab Booked from "+sourceLocation+" to "+destinitionLocation);
  }
}

class OlaMini extends Cab{
  void bookCab(String sourceLocation, String destinitionLocation){
    baseFare+=50;
    print("Ola Mini Booked from "+sourceLocation+" to "+destinitionLocation);
    print("Please Pay \u20b9 ${baseFare} basefare for mini");
  }
}

class OlaSedan extends Cab{
  void bookCab(String sourceLocation, String destinitionLocation){
    baseFare+=100;
    print("Ola Sedan Booked from "+sourceLocation+" to "+destinitionLocation);
    print("Please Pay \u20b9 ${baseFare} basefare for sedan");
  }
}

class OlaBike extends Cab{
  void bookCab(String sourceLocation, String destinitionLocation){
    baseFare+=20;
    print("Ola Bike Booked from "+sourceLocation+" to "+destinitionLocation);
    print("Please Pay \u20b9 ${baseFare} basefare for bike");
  }
}

void main(){
  //Cab cab = Cab();

  int userChoice = 31;

  // Factory Design Pattern
  Cab? cab;

  if(userChoice == 1){
    cab = OlaMini();
  }else if(userChoice == 2){
    cab = OlaSedan();
  }else if(userChoice == 3){
    cab = OlaBike();
  }else{
    print("Invalid Choice");
  }

  cab!.bookCab("Home", "Work");

}