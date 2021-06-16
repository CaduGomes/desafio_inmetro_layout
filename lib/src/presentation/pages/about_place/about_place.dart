import 'package:flutter/material.dart';

import '../../widgets/app_header.dart';
import 'widgets/widgets.dart';

class AboutPlacePage extends StatelessWidget {
  const AboutPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              AppHeader(),
              PlaceData(),
              RefuelData(),
              Padding(
                padding: const EdgeInsets.all(50),
                child: ElevatedButton(
                  child: const Text("MAIS INFORMAÇÕES"),
                  onPressed: () =>
                      Navigator.pushNamed(context, '/more-information'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
