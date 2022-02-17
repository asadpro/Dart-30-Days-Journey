import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }
void main() {
  String userInput;
  List<String> enumValues = [];
  Move.values.forEach((element) {
    enumValues.add(element.name);
  });
  bool quit = true;
  while (quit) {
    String computerInput = enumValues[Random().nextInt(enumValues.length)];
    print('Rock, Paper or Scissors? (r/p/s) ');
    String userInput = stdin.readLineSync()!.toLowerCase();
    if (userInput == 'rock' ||
        userInput == 'scissors' ||
        userInput == 'paper') {
      if (userInput == computerInput) {
        print('Game is tied because both input are: $userInput');
        print(computerInput);
      } else if (userInput == 'rock') {
        if (computerInput == "scissors") {
          print("Rock smashes scissors! You win!");
        } else {
          print("Paper covers rock! You lose.");
        }
      } else if (userInput == 'paper') {
        if (computerInput == "rock") {
          print("Paper covers rock! You win!");
        } else {
          print("Scissors cuts paper! You lose.");
        }
      } else if (userInput == 'scissors') {
        if (computerInput == "paper") {
          print("Scissors cuts paper! You win!");
        } else {
          print("Rock smashes scissors! You lose.");
        }
      }
    } else {
      print('You have put the wrong option please enter again the right one:');
    }
    print('Do you want to quit press Q');
    String quitOption = stdin.readLineSync()!.toLowerCase();
    if (quitOption == 'q') {
      quit = !quit;
    }
  }
}
