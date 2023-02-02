import 'package:flutter/material.dart';
import 'package:money_creditcard_management_app/constants.dart';
import 'package:money_creditcard_management_app/utils.dart';

class StatBar extends StatelessWidget {
  const StatBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _statBarItem(
              month: "Aug",
              primaryPercentaje: 20,
              secondaryPercentaje: 10,
            ),
            _statBarItem(
              month: "Sep",
              primaryPercentaje: 40,
              secondaryPercentaje: 30,
            ),
            _statBarItem(
              month: "Oct",
              primaryPercentaje: 55,
              secondaryPercentaje: 45,
            ),
            _statBarItem(
              month: "Nov",
              primaryPercentaje: 30,
              secondaryPercentaje: 20,
            ),
            _statBarItem(
              month: "Dec",
              primaryPercentaje: 80,
              secondaryPercentaje: 45,
            ),
            _statBarItem(
              month: "Jan",
              primaryPercentaje: 70,
              secondaryPercentaje: 20,
            ),
            _statBarItem(
              month: "Feb",
              primaryPercentaje: 40,
              secondaryPercentaje: 30,
            ),
          ],
        ),
        SizedBox(height: 40),
        _StatBarDescription()
      ],
    );
  }
}

class _statBarItem extends StatelessWidget {
  final String month;
  final int primaryPercentaje;
  final int secondaryPercentaje;

  const _statBarItem({
    Key? key,
    required this.month,
    required this.primaryPercentaje,
    required this.secondaryPercentaje,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              width: statBarItemWidth,
              height: statBarItemHeight,
              decoration: BoxDecoration(
                  color: statBarItemBackgroundColor,
                  borderRadius: BorderRadius.circular(5)),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 22,
                height: getStatBarItemHeight(primaryPercentaje),
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: 22,
                height: getStatBarItemHeight(secondaryPercentaje),
                decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        Text(this.month)
      ],
    );
  }
}

class _StatBarDescription extends StatelessWidget {
  const _StatBarDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: statBarItemBackgroundColor, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Balance")
          ],
        ),
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration:
                  BoxDecoration(color: primaryColor, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Income")
          ],
        ),
        Row(
          children: [
            Container(
              width: 15,
              height: 15,
              decoration:
                  BoxDecoration(color: secondaryColor, shape: BoxShape.circle),
            ),
            SizedBox(
              width: 10,
            ),
            Text("Spending")
          ],
        )
      ],
    );
  }
}
