import 'package:flutter/material.dart';
import 'widgets/widgets.dart';
import '../../widgets/app_header.dart';

class SelectPlacePage extends StatelessWidget {
  const SelectPlacePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppHeader(),
            PlaceView(),
            Selector(),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                child: Text("VERIFICAR BOMBA"),
                onPressed: () => Navigator.pushNamed(context, "/about-place"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
