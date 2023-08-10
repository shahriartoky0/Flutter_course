void main()
{
  const int a = 29 ;
  const int b = 19;
  int addition = a+b ;
  int subtraction= a -b ;
  int multiplication = a*b;
  double division = a/b;
  int modulus = a % b;


  print( 'a = $a , b = $b');
  print("Addition: $a + $b = $addition");
  print("Subtraction: $a - $b = $subtraction");
  print("Multiplication: $a * $b = $multiplication");
  print("Division: $a / $b = $division");
  print("Modulus: $a % $b = $modulus");

  var map = {"name": "John", "age": 30};
  print(map["name"]);
}