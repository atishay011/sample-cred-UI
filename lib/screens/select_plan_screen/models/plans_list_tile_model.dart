import 'package:flutter/cupertino.dart';

class PlansListTileModel {
  late final double amount;
  late final int duration;
  late final Color color;

  PlansListTileModel({
    required this.amount,
    required this.duration,
    required this.color,
  });
}

List<PlansListTileModel> plansList = [
  PlansListTileModel(
    amount: 4247,
    duration: 12,
    color: const Color(0xff44343E),
  ),
  PlansListTileModel(
    amount: 5580,
    duration: 9,
    color: const Color(0xff7C7390),
  ),
  PlansListTileModel(
    amount: 9975,
    duration: 6,
    color: const Color(0xff59698B),
  )
];
