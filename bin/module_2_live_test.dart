/*Write a Dart program that calculates the total price of items in a shopping cart, including tax.
Given a list of item prices [12.99, 8.75, 21.50, 5.00] and a tax rate of 8%, calculate
the total cost after applying the tax.
 Print the total cost to two decimal places.
 */
void main()
{
List <double> prices = [12.99, 8.75, 21.50, 5.00];
double taxRate = 8 ;
double showResult =calculateTotalCost(carts: prices , tax: taxRate);
print ("Total Cost:\$${showResult.toStringAsPrecision(4)}");
}

double calculateTotalCost({required List<double>carts , required double tax })
{
  if (carts.isEmpty== true)
    {
      return 0 ;
    }
      double cartTotal =0;
  for (double cart in carts)
    {
      cartTotal= cart + cartTotal;
    }
  double taxCost=( cartTotal * tax )/100 ;
  double totalCost = cartTotal+ taxCost;
  return totalCost;
}