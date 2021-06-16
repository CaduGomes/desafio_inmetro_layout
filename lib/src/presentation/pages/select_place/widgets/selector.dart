import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/pages/select_place/widgets/widgets.dart';
import 'package:frontend/src/presentation/utils/breakpoints.dart';

class Selector extends StatelessWidget {
  const Selector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth < desktopDevice ? 40 : 200),
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTile(title: "Selecionar Bomba"),
          Row(
            children: [
              SelectorIcon(
                text: "1",
              ),
              SelectorIcon(text: "2"),
              SelectorIcon(text: "3"),
              SelectorIcon(text: "4"),
              SelectorIcon(text: "5"),
              SelectorIcon(text: "6")
            ],
          )
        ],
      ),
    );
  }
}

class SelectorIcon extends StatelessWidget {
  const SelectorIcon({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth < smallDevice ? 25 : 40,
      height: screenWidth < smallDevice ? 25 : 40,
      margin: EdgeInsets.only(right: 10, top: 10),
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Theme.of(context).accentColor),
          borderRadius: BorderRadius.circular(30)),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
            fontSize: screenWidth < smallDevice ? 15 : 18),
      )),
    );
  }
}
