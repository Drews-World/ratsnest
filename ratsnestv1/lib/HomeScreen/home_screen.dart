import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        /*
        * 
        * I was thinking stories could go here
        *
        */
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(
              horizontal: screenWidth * 0.35, vertical: screenHeight * 0.14),
          child: Row(
              /*
            children: [
              ListView(
                children: [Text('Scroll Through Your Feed')],
              ),
              SizedBox(),
              Column(
                children: [
                  ListView(
                    children: [Text('Scroll Through Messages')],
                  )
                ],
              )
            ],
            */
              ),
        ),
      ),
    );
  }
}
