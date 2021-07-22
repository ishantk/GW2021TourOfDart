// Whatever we write in main function
// will be executed by main thread
// in a sequence

void printData(var data){
  print("DATA: ${data}");
}
void main(){

  var cabOptions = ["mini", "sedan", "bike"];
  var paymentOptions = ["upi", "net banking", "card", "cash"];

  // indexed
  // for(int i=0;i<cabOptions.length;i++){
  //   print(cabOptions[i]);
  // }

  // enhanced for loop
  // for each loop
  // READ ONLY
  // for(var option in cabOptions){
  //   print(option);
  // }



  cabOptions.forEach(
    (element) {
      print("ELEMENT ${element}");
    }
  );

  print("~~~~~~~~~");

  cabOptions.forEach(printData);
}