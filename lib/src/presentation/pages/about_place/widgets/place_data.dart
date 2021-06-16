import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/utils/breakpoints.dart';

class PlaceData extends StatelessWidget {
  const PlaceData({Key? key}) : super(key: key);

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
          Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            width: double.infinity,
            height: 3,
            decoration: BoxDecoration(color: Theme.of(context).accentColor),
          ),
          Text(
            "Dados do Estabelecimento",
            style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text("Nome: "),
          ),
          Text("Localização: ")
        ],
      ),
    );
  }
}
