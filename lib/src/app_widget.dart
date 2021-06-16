import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/pages/about_place/about_place.dart';
import 'package:frontend/src/presentation/pages/home/home.dart';
import 'package:frontend/src/presentation/pages/more_information/more_information.dart';
import 'package:frontend/src/presentation/pages/select_place/select_place.dart';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: HexColor.fromHex('#002e5f'),
        primaryColorLight: HexColor.fromHex("#114781"),
        accentColor: HexColor.fromHex("#03A8E8"),
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
          primary: Theme.of(context).accentColor,
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
          ),
        )),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ElevatedButton.styleFrom(
              side: BorderSide(color: Theme.of(context).accentColor),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              textStyle: TextStyle(color: Theme.of(context).accentColor)),
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (_) => HomePage(),
        "/select-place": (_) => SelectPlacePage(),
        "/more-information": (_) => MoreInformationPage(),
        "/about-place": (_) => AboutPlacePage(),
      },
    );
  }
}
