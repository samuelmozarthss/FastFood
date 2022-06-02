import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/background.jpeg'),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black,
              ],
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/burger.png',
                height: 100,
                width: 100,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'FastFood',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
