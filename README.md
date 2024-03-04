Thanks to this package, you can perform financial transactions such as profit-loss calculation and raise calculation.

## Features

- Profit-loss calculation
- Raise calculation

## Getting started

## Usage


```dart

import 'package:financial_transactions/financial_transactions.dart';

final calculateRaiseByRate = financialTransactions.calculateRaiseByRate(3000, 50); // {"initial_amount":3000.0,"raise_rate":50.0,"raise_amount":1500.0,"final_amount":4500.0}

final calculateRaiseByAmount = financialTransactions.calculateRaiseByAmount(3000, 1500); // {"initial_amount":3000.0,"raise_rate":50.0,"raise_amount":1500.0,"final_amount":4500.0}

final profitLossCalculate = financialTransactions.profitLossCalculate(3000, 4500); // {"inital_amount":3000.0,"final_amount":4500.0,"profit":1500.0,"profitPercentage":"50.00"}

```
