class Budget {
  double income;
  double bills;
  double monthlySavings;

  Budget({this.income = 0, this.bills = 0, this.monthlySavings = 0});

  bool get isSet => income > 0;

  @override
  String toString() {
    return 'Income: $income Bills: $bills Savings: $monthlySavings';
  }
}