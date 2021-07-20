const appVersion = 1.0;

void main(){
  // const is generally used in functions i.e. local scope
  // or global scope
  const String host = "https://wwww.abc.com/";
  const String REGISTER_API = host+"register";
  print("Register Request Goes on ${REGISTER_API}");

  // final marks the instance variables i.e. attributes of an object as final
  final String appTitle = "WhatsApp";
  print("App Name is: ${appTitle}");

}