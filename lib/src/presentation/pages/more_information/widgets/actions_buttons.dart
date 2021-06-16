import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/utils/breakpoints.dart';

class ActionsButtons extends StatelessWidget {
  const ActionsButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth < desktopDevice ? 40 : 200),
      margin: EdgeInsets.symmetric(vertical: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.arrow_downward_sharp),
              ),
              const Text("DOWNLOAD")
            ]),
            onPressed: () {},
          ),
          TextButton(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Icon(Icons.camera_alt_outlined),
              ),
              const Text("NOVA LEITURA")
            ]),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
