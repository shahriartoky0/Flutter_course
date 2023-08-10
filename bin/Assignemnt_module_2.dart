void main()
{
  List<double> grade_obtained = [85, 92, 78, 65, 88, 72];
  double average_grade = calculate_average(grades: grade_obtained);
  print(" Student's average grade:$average_grade");
  int roundedAverage = rounding(toberound: average_grade);
  print("Rounded average:$roundedAverage");
  result(marks: average_grade);
}
double calculate_average({required List <double> grades})
{
  if (grades.isEmpty == true)
    {
      return 0 ;
    }
  double total = 0 ;
  for (double grade in grades)
    {
      total = grade + total;
    }
  double average = (total / grades.length) ;

  return average;
}

int rounding({required double toberound})
    {
      int roundedValue = toberound.round();
      return roundedValue;
    }

void result ({required double marks})
{
      if (marks >= 70)
        {
          print("Passed");
        }
      else
        {
          print("Failed");
        }
}



