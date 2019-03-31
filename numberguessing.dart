import 'dart:math';
import 'dart:io';

void main(){
  int guess;
  Random rand = new Random();
  int answer = rand.nextInt(100);

  do{
    print("Enter your guess:");
    guess = int.parse(stdin.readLineSync());
    if(guess < answer){
      print("Too low!");
    }else if(guess > answer){
      print("Too high");
    }
  }while(guess != answer);
  print("You got it!");
}