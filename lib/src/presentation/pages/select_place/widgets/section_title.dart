import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/utils/breakpoints.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Text(
      title,
      style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: screenWidth < smallDevice ? 20 : 24,
          fontWeight: FontWeight.bold),
    );
  }
}
