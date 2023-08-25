abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print('Deposit amount: $amount, Current balance: $balance');
  }

  void withdraw(double amount);
}

class SavingAccount extends Account {
  double interestRate;

  SavingAccount(super.accountNumber, super.balance, this.interestRate);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance -= (balance * interestRate);
    print('Withdraw amount: $amount, Current balance: $balance');
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(super.accountNumber, super.balance, this.overdraftLimit);

  @override
  void withdraw(double amount) {
    if (amount <= balance && amount <= overdraftLimit) {
      balance -= amount;
      print('Withdraw amount: $amount, Current balance: $balance');
    } else {
      print('insufficient funds.');
    }
  }
}

void main() {
  SavingAccount sohan = SavingAccount(1234567891234, 5000, 0.05);
  sohan.deposit(1000);
  sohan.withdraw(1000);
  print('');

  CurrentAccount rabby = CurrentAccount(1234567891234, 4000, 20000);
  rabby.deposit(1000);
  rabby.withdraw(1000);
}
