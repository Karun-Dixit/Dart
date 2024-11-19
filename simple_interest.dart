import 'dart:io';

// Function to calculate simple interest using named parameters
double calculateSimpleInterest({required double principal, required double rate, required double time}) {
  return (principal * rate * time) / 100;
}

void main() {
  // Prompt user for input
  print("Enter the principal amount:");
  double principal = double.parse(stdin.readLineSync()!);

  print("Enter the rate of interest (in %):");
  double rate = double.parse(stdin.readLineSync()!);

  print("Enter the time period (in years):");
  double time = double.parse(stdin.readLineSync()!);

  // Calculate simple interest
  double interest = calculateSimpleInterest(principal: principal, rate: rate, time: time);
  
  // Display the result
  print("The simple interest is \$${interest.toStringAsFixed(2)}.");
}