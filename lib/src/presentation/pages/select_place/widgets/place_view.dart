import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/pages/select_place/widgets/widgets.dart';
import 'package:frontend/src/presentation/utils/breakpoints.dart';

class PlaceView extends StatelessWidget {
  const PlaceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth < desktopDevice ? 40 : 200),
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionTile(
            title: "Posto Lorem Ipsum Dolor",
          ),
          Text("Rua: Sed diam   Bairro: Nonummy Nibh",
              style: TextStyle(fontSize: screenWidth < smallDevice ? 13 : 15)),
          Text("Cidade: Euismod   CEP: 0022298191",
              style: TextStyle(fontSize: screenWidth < smallDevice ? 13 : 15)),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  child: const Text("CONFIRMA"),
                  onPressed: () => Navigator.pushNamed(context, "/about-place"),
                ),
                SizedBox(
                  width: 15,
                ),
                OutlinedButton(
                  style: ButtonStyle(),
                  child: const Text("BUSCAR NOVAMENTE"),
                  onPressed: () => Navigator.pushNamed(context, "/"),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
