import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:money_creditcard_management_app/constants.dart';

class BottonNavigationBar extends StatelessWidget {
  const BottonNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.35,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Container(
              width: 110,
              height: 4,
              decoration: BoxDecoration(color: scaffoldBackgroundColor)),
          SizedBox(height: 25),
          Text(
            "Expenses Category",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          Expanded(child: _CategoryList()),
          SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }
}

class _CategoryList extends StatelessWidget {
  const _CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _CategoryListItem(
            icon: Icons.book,
            amount: 372,
            category: "Books",
            backgroundColor: Color(0xffc9e7ff),
          ),
          _CategoryListItem(
            icon: Icons.photo,
            amount: 275,
            category: "Photo",
            backgroundColor: scaffoldBackgroundColor,
          ),
          _CategoryListItem(
            icon: Icons.code,
            amount: 189,
            category: "Development",
            backgroundColor: scaffoldBackgroundColor,
          ),
        ],
      ),
    );
  }
}

class _CategoryListItem extends StatelessWidget {
  final IconData icon;
  final int amount;
  final String category;
  final Color backgroundColor;

  const _CategoryListItem({
    Key? key,
    required this.icon,
    required this.amount,
    required this.category,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 115,
      width: 125,
      decoration: BoxDecoration(
        color: this.backgroundColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color:
                  (this.category == "Books") ? Colors.white : Color(0xffc9e7ff),
              shape: BoxShape.circle,
            ),
            child: FaIcon(
              this.icon,
              color: Color(0xff4ea9ff),
            ),
          ),
          SizedBox(height: 30),
          Text(
            "\$ ${this.amount}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5),
          Text(this.category)
        ],
      ),
    );
  }
}
