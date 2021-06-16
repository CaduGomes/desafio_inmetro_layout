import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  const ResposiveLayout(
      {Key? key, required this.desktopBody, required this.mobileBody})
      : super(key: key);

  final Widget desktopBody;
  final Widget mobileBody;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) return mobileBody;

        return desktopBody;
      },
    );
  }
}
