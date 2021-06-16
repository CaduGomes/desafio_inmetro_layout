import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/utils/breakpoints.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: double.infinity,
      padding: EdgeInsets.symmetric(
          horizontal: screenWidth < desktopDevice
              ? (MediaQuery.of(context).size.width * 0.1)
              : 40),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: screenWidth < desktopDevice
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.center,
              children: [
                Text(
                  "MEDIDA",
                  style: TextStyle(
                      fontSize: screenWidth < smallDevice
                          ? 20
                          : screenWidth < desktopDevice
                              ? 30
                              : 40,
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).primaryColorLight,
                      letterSpacing: 1.5),
                ),
                (screenWidth < desktopDevice
                    ? SizedBox()
                    : SizedBox(
                        width: 15,
                      )),
                Text("INTELIGENTE",
                    style: TextStyle(
                        fontSize: screenWidth < smallDevice
                            ? 20
                            : screenWidth < desktopDevice
                                ? 30
                                : 40,
                        fontWeight: FontWeight.w900,
                        color: Theme.of(context).primaryColor,
                        letterSpacing: 1))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: screenWidth < smallDevice
                      ? 80
                      : screenWidth < desktopDevice
                          ? 120
                          : 150,
                  child: Image.asset("assets/inmetro_logo.png"),
                ),
                SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: screenWidth < smallDevice
                      ? 80
                      : screenWidth < desktopDevice
                          ? 120
                          : 150,
                  child: Image.asset("assets/iti_logo.png"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
