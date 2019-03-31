import 'dart:io';


int fibon(int n){
  
  if(n == 1 || n == 0){
    return n;
  }
  
  return fibon(n-2) + fibon(n-1);
}

void main(){
  print("Enter the index of fibonacci:");
  int fibonacciIndex = int.parse(stdin.readLineSync());
  print("A - Recursive\nB - Iterative");
  switch(stdin.readLineSync().toUpperCase()){
    case "A":
      print("${fibonacciIndex} of serie is ${fibon(fibonacciIndex)}");
      break;
    case "B":
      int n = 3;
      if(fibonacciIndex == 1 || fibonacciIndex == 2){
        print("${fibonacciIndex} of serie is ${fibonacciIndex-1}");
        return;
      }
      int a = 0;
      int b = 1;

      do{
        int tmp = b;
        b = a+b;
        a = tmp;
        n++;
      }while(n <= fibonacciIndex);
      print("${fibonacciIndex} of serie is ${b}");
      break;
    default:
      break;
  }
}