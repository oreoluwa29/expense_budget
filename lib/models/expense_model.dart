import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

enum Category { food, travel, leisure, work }

final formatter = DateFormat.yMd();
const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.work: Icons.work,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie
};

class Expense {
  Expense(
      {required this.title,
      required this.amount,
      required this.time,
      required this.category})
      : id = const Uuid().v4();
  final String id;
  final String title;
  final double amount;
  final DateTime time;
  final Category category;

  String get formattedDate {
    return formatter.format(time);
  }
}

class ExpenseBucket {
  ExpenseBucket({required this.category, required this.expenses});
  final Category category;
  final List<Expense> expenses;

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((expense) => expense.category == category)
            .toList();

  double get totalExpenses {
    double sum = 0;

    for (final expense in expenses) {
      sum += expense.amount;
    }

    return sum;
  }
}
