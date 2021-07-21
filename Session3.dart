// Data Types:
// Numbers, Strings, Booleans, List, Set and Map



void main(){
  // Number
  // int 64 bits
  // double 64 bits
  var x = 2e3;
  print("x is: ${x} and its data type is: ${x.runtimeType}");

  double amount = 5000;
  print("amount is: ${amount} and its data type is: ${amount.runtimeType}");

  // Strings
  // var title = 'john\'s coffee shop';
  var title = "john's coffee shop";
  print("title is: ${title} and its type is: ${title.runtimeType}");

  var message = 'Hello'
                'This is Awesome';

  var multiLineText = '''
This is a good Day
    Its gonna be a great learning
    thank you
  ''';

  print("message is: ${message}");
  print("multiLineText is: ${multiLineText}");

  // RAW String
  var text = r'hello hi \n this is awesom \s wow...';
  print("text is: ${text}");

  // Booleans
  var isInternetEnabled = true;
  isInternetEnabled = false;


  var isDiningRestaurant = false;

  // List
  // data gets indexed
  //              0            1           2
  //var categories = ["Burger", "Fast Food", "Beverages", 100, 200, 300];
  var categories = <String>[
    "Burger", 
    "Fast Food", 
    "Beverages",
    if (isDiningRestaurant) "Dining"
  ];
  
  print(categories);

  var johnFollowers = <String>{"jim", "jack", "joe", "jack", "george"};
  var harryFollowers = <String>{"jim", "jack", "george", "lee", "mike"};
  print(johnFollowers);
  johnFollowers.add("george");
  johnFollowers.add("fionna");
  johnFollowers.add("kim");

  

  print(johnFollowers);
  print("Mutual Followers");
  print(johnFollowers.intersection(harryFollowers));

  var restaurant = {
    'name': 'Mc Donalds',
    'categories': ["Burger", "Fast Food", "Beverages"],
    'timeToDeliver': 30,
    'ratings': 4.5
  };

  print("restaurant is: ${restaurant} and type is: ${restaurant.runtimeType}");

  var departments = Map<String, int>();
  departments['cse'] = 10;
  departments['it'] = 12;
  departments['ece'] = 8;

  departments['it'] = 18;

  print("departments: ${departments}");

}