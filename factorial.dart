import 'dart:io';

int factorial(int n){

  if(n == 1 || n == 0){
    return n;
  }

  return n*factorial(n-1);

}


int factorialIterative(int n ){
  int i = 1;
  do{
    i = i * n;
    n--;
  }while(n>0);
  return i;
}


void main(){
  print('Enter the index for factorial:');
  int index = int.parse(stdin.readLineSync());
  print('${index}! is ${factorial(index)}');
  print('${index}! is ${factorialIterative(index)}');



}