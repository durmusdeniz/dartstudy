import 'dart:io';

void main(){
  print("A:Convert C to F\nB:Convert F to C");
  String selection;

  do{
    selection = stdin.readLineSync().toUpperCase();
  }while(selection != "A" && selection != "B");

  print("Enter the starting temperature:");
  int inTemp = int.parse(stdin.readLineSync());

  switch(selection){
    case "A":
      print("$inTemp degrees C is ${CtoF(inTemp)} degrees F");
      break;
    case "B":
      print("$inTemp degrees F is ${FtoC(inTemp)} degrees C");
      break;
    default:
      break;
  }
}

double CtoF(int tmp){
  return tmp*1.8 + 32;
}

double FtoC(int tmp){
  return (tmp - 32)/1.8;
}