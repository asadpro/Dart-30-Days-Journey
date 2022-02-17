import 'dart:io';

enum Destination {
  Islamabad,
  Rawalpindi,
  Peshawar,
  Lahore,
  karachi,
  Balochistan,
  Chitral
}
void main() {
  //In this tutorial we will discuss switch statement and it's usage with real life example.
  //Cutting bus ticket based on location.
  print('Where do you want to go?\n Enter option:');
  print("""
        1: Islamabad
        2: Rawalpindi
        3: Peshawar
        4: Lahore
        5: karachi
        6: Balochistan
        7: Chitral
""");
  int option = int.parse(stdin.readLineSync()!);

  switch (option) {
    /*Here switch statement will check inside of option variable if its contain what we need
  e.g. in this case option may contain integer for instance 1 if it's 1 then case 1 will be executed.
  we can also put multiple case look at the end as i mentioned two cases.
    */
    case 1:
      print('Your ticket cost is: 200PKR');
      break;
    case 2:
      print('Your ticket cost is: 400PKR');
      break;
    case 3:
      print('Your ticket cost is: 100PKR');
      break;
    case 4:
      print('Your ticket cost is: 600PKR');
      break;
    case 5:
      print('Your ticket cost is: 300PKR');
      break;
    case 6:
    case 7:
      print('Your ticket cost is: 900PKR');
      break;
    default:
      print('You have put the wrong option ');
      break;
  }

  print('=======================================');
  /* we can also do the same using enumeration which is the collection of constant values. for example:
  but first we have define enum list whether below the main method or above. you can declare anywhere
  in the file but not insida main method.

  */
  const location = Destination.Balochistan;
  switch (location) {
    case Destination.Balochistan:
    case Destination.Chitral:
      print('Your ticket cost is: 100PKR');
      break;
    case Destination.Islamabad:
      print('Your ticket cost is: 300PKR');
      break;
    case Destination.Lahore:
      print('Your ticket cost is: 400PKR');
      break;
    case Destination.Peshawar:
      print('Your ticket cost is: 500PKR');
      break;
    case Destination.Rawalpindi:
      print('Your ticket cost is: 600PKR');
      break;

    default:
      print('default statement has been printed');
      break;
  }

  //Printing values of enumeration full list or single value.

  Move.values.forEach((e) => print(e.name));
  //If you want a single value then do the following
  print(Move.values.byName('rock').name);
}

enum Move { rock, paper, scissors }
