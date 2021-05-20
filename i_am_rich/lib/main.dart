import 'package:flutter/material.dart';
void main() {/**/
  runApp(MaterialApp(
    home : Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar : AppBar(
          title : Text("App"),
          backgroundColor: Colors.redAccent
      ),
        body : Center(
        child : Image(
          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg')
          ),
        ),
      ),
    ),
  );
}
