/*
Define an abstract class Account with the following properties:
●       accountNumber (integer)
●       balance (double)

It should also have the following methods:
●       deposit(double amount): Adds the specified amount to the account balance.
●       withdraw(double amount): Abstract method that deducts the specified amount from the account balance.

Define a class SavingsAccount that extends the Account class. It should have an additional property called interestRate (double).
Implement the withdraw() method in the SavingsAccount class as follows:
●       Subtract the specified amount from the account balance.
●       Apply the interest rate to the remaining balance.
Define a class CurrentAccount that extends the Account class. It should have an additional property called overdraftLimit (double).

Implement the withdraw() method in the CurrentAccount class as follows:

●       Allow withdrawals up to the overdraft limit.
●       If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
In main()
●       Create an instance of the SavingsAccount class by providing values for the account number, initial balance, and interest rate.
●       Use the instance to perform operations like depositing and withdrawing money.
●       Create an instance of the CurrentAccount class by providing values for the account number, initial balance, and overdraft limit.
●       Use the instance to perform operations like depositing and withdrawing.

 */
abstract class Account
{
  int accountNumber ;
  double balance ;

 void deposit (double amount)
 {
   balance = amount + balance;
 }
 void withdraw (double amount)
 {
    balance = balance - amount ;
 }
 Account (this.accountNumber , this.balance);
}

class savingsAccount extends Account
{
  double interestRate ;
  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
    if (amount<balance)
      {
    if (amount < balance) {
      balance = balance - amount;
      balance += balance * (interestRate / 100);
    }
    else
      {
        print("Not enough balance to withdraw this amount. Current account balance : $balance");
      }
    }


  }
  savingsAccount({required int  accountNumber,required double balance,  required this.interestRate})
          :super (accountNumber , balance);


}
class CurrentAccount extends Account
{
  double overdraftLimit ;
  @override
  void withdraw(double amount) {
    // TODO: implement withdraw
    if(amount<balance) {
      if (amount <= overdraftLimit) {
        balance = balance - amount;
      }
      else {
        print("Insufficient Funds !!!");
      }
    }
    else
      {
        print("Not enough balance to withdraw this amount. Current account balance : $balance");
      }
  }
    CurrentAccount ({required double balance, required int accountNumber, required this.overdraftLimit})
  : super (accountNumber, balance);
}
void main ()
{
  savingsAccount savingsAccountObj = savingsAccount(accountNumber: 111409234, balance: 100000, interestRate: 7);
  savingsAccountObj.deposit(10000);
  savingsAccountObj.withdraw(3000);
  print("Saving Account (${savingsAccountObj.accountNumber})'s Current Balance: \n${savingsAccountObj.balance}");

  CurrentAccount currentAccountObj = CurrentAccount(balance: 50000, accountNumber: 222940512, overdraftLimit: 10000);
  currentAccountObj.deposit(5000);
  currentAccountObj.withdraw(7000);
  print("\nCurrent Account (${currentAccountObj.accountNumber})'s Current Balance: \n${currentAccountObj.balance}");

  currentAccountObj.withdraw(11000);

}