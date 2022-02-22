import 'dart_day_27_getterSetter_part_1.dart'; //import the part so we can access it here

void main() {
  Result result2 = Result(799, 'Hamza');
  Result result3 = Result(480, 'alison');
  print(result2.displayMarks());
  print(result3.displayMarks());
/* print(result2._marks)
we can't access it directly like this until we make getter for this in other file*/
  print("Accesing private _marks: ${result2.gettingMarks}");
  Result resultInstance = Result(679, 'Bilal');
  resultInstance.displayFullInfo();
  print('=======================================');
  //changing name only and then print the same
  resultInstance.settingName = 'Hazrat bilal';
  //changing marks from 679 to 800
  resultInstance.settingMarks = 800;
  resultInstance.displayFullInfo();
}
