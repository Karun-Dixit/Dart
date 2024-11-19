import 'dart:io';

void main() {
  //declare variable
  double weight;
  double height;

  //assign variable
  print("enter the weight");
  weight = double.parse(stdin.readLineSync()!);
  print("enter the height");
  height = double.parse(stdin.readLineSync()!);

  //call function
  double bmi = calculateBbmi(weight: weight, height: height);

  if (bmi < 18.5) {
    print("underweight");
  } else if (bmi < 24.9) {
    print("normal weight");
  } else if (bmi < 29.9) {
    print("overweight");
  } else if (bmi < 34.9) {
    print("obesity class 1");
  } else if (bmi < 34.9) {
    print("obesity class 2");
  } else {
    print("obesity class 3");
  }
}

double calculateBbmi({
  required double weight,
  required double height,
}) {
  return (weight / height * height); //algorithm
}