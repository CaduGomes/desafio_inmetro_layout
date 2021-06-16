import 'package:flutter/material.dart';
import '../../widgets/app_header.dart';

import 'widgets/widgets.dart';

class MoreInformationPage extends StatelessWidget {
  const MoreInformationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 0,
      ),
      body: Container(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                AppHeader(),
                VerificationData(),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: Column(
                children: [
                  ActionsButtons(),
                  ElevatedButton(
                    child: const Text("RELATAR PROBLEMAS"),
                    style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor),
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
