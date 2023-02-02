import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_creditcard_management_app/constants.dart';
import 'package:money_creditcard_management_app/src/widgets/homePage/bottomNavigationBar.dart';
import 'package:money_creditcard_management_app/src/widgets/statBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: Colors.black87,
              ),
              SizedBox(height: 50),
              _TotalBalance(),
              SizedBox(height: 50),
              StatBar(),
              // BottonNavigationBar()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottonNavigationBar(),
    );
  }
}

class _TotalBalance extends StatelessWidget {
  const _TotalBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Total Balance",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "\$7,382",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        FloatingActionButton(
          onPressed: () {},
          elevation: 0,
          backgroundColor: primaryColor,
          child: FaIcon(FontAwesomeIcons.plus),
        )
      ],
    );
  }
}
