import "package:flutter/material.dart";

class Homepage extends StatelessWidget {
  final int days = 30;
  final String name = "TeddyDaddy";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TeddyDaddy Company"),
      ),
      body: Center(
        child: Container(
          child: Text('Welcome to my world'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
