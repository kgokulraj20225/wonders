import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  Second({super.key, required this.data});
  String data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("wellcome"),
      ),
      body: Center(
        child: Container(
          child: Text(data),
        ),
      ),
    );
  }
}
