library financial_transactions;

import 'dart:convert';

class FinancialTransactions {
  String profitLossCalculate(double initialAmount, double finalAmount) {
    double profit = finalAmount - initialAmount;
    double profitPercentage = (profit / initialAmount) * 100;
    Map<String, dynamic> result = {
      "inital_amount": initialAmount,
      "final_amount": finalAmount,
      "profit": profit,
      "profitPercentage": profitPercentage.toStringAsFixed(2),
    };
    return jsonEncode(result);
  }

  String raiseCalculateWithRate(double initialAmount, double finalAmount) {
    double raise = finalAmount - initialAmount;
    double raisePercentage = (raise / initialAmount) * 100;

    Map<String, dynamic> result = {
      'initial_amount': initialAmount,
      'final_amount': finalAmount,
      'raise': raise,
      'raise_percentage': raisePercentage.toStringAsFixed(2),
    };

    return jsonEncode(result);
  }

  String calculateRaiseByRate(double initialAmount, double raiseRate) {
    double raiseAmount = initialAmount * (raiseRate / 100);
    double finalAmount = initialAmount + raiseAmount;

    Map<String, dynamic> result = {
      'initial_amount': initialAmount,
      'raise_rate': raiseRate,
      'raise_amount': raiseAmount,
      'final_amount': finalAmount,
    };

    return jsonEncode(result);
  }

  static String calculateRaiseByAmount(
      double initialAmount, double raiseAmount) {
    double raiseRate = (raiseAmount / initialAmount) * 100;
    double finalAmount = initialAmount + raiseAmount;

    Map<String, dynamic> result = {
      'initial_amount': initialAmount,
      'raise_rate': raiseRate,
      'raise_amount': raiseAmount,
      'final_amount': finalAmount,
    };

    return jsonEncode(result);
  }
}
