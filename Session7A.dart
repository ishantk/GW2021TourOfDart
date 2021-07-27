abstract class PayTMPaymentGateway{
  
  bool isBankInterfaceUp = true;

  void pay(int amount){
    amount+=10;

    if(isBankInterfaceUp){
      print("PAYTM");
      print("PAYMENT SUCCESSFUL \u20b9${amount} :)");
      onPaymentSuccess();
    }else{
      print("PAYTM");
      print("PAYMENT NOT SUCCESSFULL. Please RETRY :(");
      onPaymentFailed();
    }
  }

  // Abstract Methods :)
  void onPaymentSuccess();
  void onPaymentFailed();

}

class ZomatoAppPayment extends PayTMPaymentGateway{

  void onPaymentSuccess(){
    print("ZOMATO");
    print("Thank You for transacting amount");
    print("Your Order has been accepted");
  }

  void onPaymentFailed(){
    print("ZOMATO");
    print("Sorry!! We could not process Your Order. Payment Failed");
    print("Please ReTry");
  }

}

void main(){
  ZomatoAppPayment zomatoPaymentApp = ZomatoAppPayment();
  zomatoPaymentApp.pay(1000);
}