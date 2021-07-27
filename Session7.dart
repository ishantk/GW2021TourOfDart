class Parent{

  String? fname, lname;
  int? wealth;

  Parent(){
    fname = "John";
    lname = "Watson";
    wealth = 100000;
    print("Parent Object Constructed");
  }

  void show(){
    print("Parent Details");
    print("${fname} ${lname}  |  \u20b9${wealth}");
  }

}

class Child extends Parent{
  
  String? fname;
  int? wealth;
  String? companyName;

  Child(){
    fname = "Fionna";
    wealth = 200000;
    companyName = "ABC Corp";
    print("Child Object Constructed");
  }

  // Overriding
  void show(){
    super.show(); // Parent's show
    print("~~~~~~~~~~~~~~");
    print("Child Details");
    print("${fname} ${lname}  |  \u20b9${wealth}");
    print("${companyName}");
  }
}

// Inheritance
// RULE #1: 
// Before the Object of Child, Object of Parent is created in Memory

void main(){
  //Parent pRef = Parent();
  Child cRef = Child();

  // RULE #2: 
  // Child can access all the properties of the Parent
  // Iff they are not available in Child

  cRef.wealth = 50000;
  cRef.show();
}