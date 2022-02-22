void main() {
  Eniac eniac = Eniac(size: '12 Feet', speed: '1.2Ghz');
  print(eniac.whatIcanDo());

  print('\n=================================\n');
  RazerBlade razerBlade =
      RazerBlade(razerSize: '14 inch', razerSpeed: '3.4Ghz');
  print(razerBlade.whatIcanDo());

  print('\n=================================\n');
  MacbookProM1 macbookProM1 =
      MacbookProM1(macbookSize: '12 inch', macbookSpeed: '4.4Ghz');
  print(macbookProM1.whatIcanDo());
}

class Eniac {
  Eniac({required this.size, required this.speed});
  String speed;
  String size;
  String addition() => 'I can do addition';
  String subtraction() => 'I can do subtraction';
  String multiplication() => 'I can do multiplication';
  String division() => 'I can do division';

  List<String> whatIcanDo() {
    print('My speed is $speed and my size is: $size');
    List<String> returnOperations = [
      addition(),
      subtraction(),
      multiplication(),
      division()
    ];
    return returnOperations;
  }
}

class RazerBlade extends Eniac {
  /*
  if we create a constructor in the parent class with some member variable then we have to define inside 
  it's child too. Like in Eniac (the parent class of RazerBlade) we new properties speed and size so then 
  we have to define those properties in our child class and after using super constructor and set it's size
  and speed also because always remember trait and features of father must be in the child but it's not 
  neccessary to add functionality of child into parent.  
  */
  RazerBlade({required this.razerSize, required this.razerSpeed})
      : super(size: razerSize, speed: razerSpeed);
  String razerSize;
  String razerSpeed;
  String gaming() => 'I can do gaming';
  String videoEncoding() => 'I can do video editing easily';
  List<String> whatIcanDo() {
    List<String> returnOperations = [
      addition(),
      subtraction(),
      multiplication(),
      division(),
      gaming(),
      videoEncoding(),
    ];
    return returnOperations;
  }
}

class MacbookProM1 extends RazerBlade {
  MacbookProM1({required this.macbookSize, required this.macbookSpeed})
      : super(razerSize: macbookSize, razerSpeed: macbookSpeed);
  String macbookSize;
  String macbookSpeed;
  String machineLearning() => 'I can train machine learning model easily';
  List<String> whatIcanDo() {
    List<String> returnOperations = [
      addition(),
      subtraction(),
      multiplication(),
      division(),
      gaming(),
      videoEncoding(),
      machineLearning()
    ];
    return returnOperations;
  }
}
