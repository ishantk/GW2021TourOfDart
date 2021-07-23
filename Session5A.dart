
void printNumber({int num:5}){

  if(num > 0){
    print(num);
    printNumber(num: num-1);
  }else{
    return;
  }
}

void main(){

  for(int i=5;i>0;i--){
    print(i);
  }

  print("~~~~~~~~~");

  printNumber();
  print("~~~~~~~~~");
  printNumber(num: 10);

}