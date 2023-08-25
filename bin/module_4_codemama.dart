// Write a program that swaps the values of two variables.
// import 'dart:io';
//
// void main (){
// String input=  stdin.readLineSync()!;
// List inputs = input.split(' ');
//
// print("Before swapping: num1 = ${inputs[0]}, num2 = ${inputs[1]}");
// print("After swapping: num1 = ${inputs[1]}, num2 = ${inputs[0]}");
// }

//Write a program that checks if a number entered by the user is positive, negative, or zero.

// import 'dart:io';
//
// void main (){
// int input=  int.parse(stdin.readLineSync()!);
// if (input<0)
//   {
//     print("$input is a negative number.");
//   }
// else if (input>0)
//   {
//     print("$input is a positive number.");
//   }
// else
//   {
//     print("The number is zero.");
//   }
// }

//Write a program to calculate distance between two points.
// import 'dart:io';
// import 'dart:math';
// void main() {
//
//   String inputs = stdin.readLineSync()!;
//   List input = inputs.split(" ");
//   double x1 = double.parse(input[0]);
//   double y1 = double.parse(input[1]);
//
//   String second_inputs = stdin.readLineSync()!;
//   List second_input = second_inputs.split(" ");
//   double x2 = double.parse(second_input[0]);
//   double y2 = double.parse(second_input[1]);

//   double distance = sqrt(pow(x2 - x1, 2) + pow(y2 - y1, 2));
//   print("Distance: ${distance.toStringAsFixed(2)}");
// }


// Write a program to convert temperature from Celsius to Fahrenheit.
  
  import 'dart:io';
  void main (){
    double celcius = double.parse (stdin.readLineSync()!);
    double farenhite = (celcius * (9/5)) +32 ;
    print("The temperature in Fahrenheit is: ${farenhite.toStringAsFixed(2)}");
  }
