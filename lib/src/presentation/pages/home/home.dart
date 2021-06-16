import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frontend/src/presentation/widgets/app_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 6),
        () => Navigator.pushNamed(context, "/select-place"));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        toolbarHeight: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.7,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppHeader(),
                SizedBox(
                  height: 150,
                  child: Image.asset("assets/bluetooth_logo.png"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      color: Theme.of(context).accentColor,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      "Processando",
                      style: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
