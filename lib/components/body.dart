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
                Colors.black.withOpacity(0.7),
                Colors.black,
              ],
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                SizedBox(
                  height: 30,
                ),
                inputField(context),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                  onPressed: null,
                  child: Text('Or Continue With'),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}

inputField(context) {
  return Column(
    children: [
      TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 20, bottom: 20, left: 40),
          hintText: "Email",
          hintStyle: TextStyle(
            color: Color.fromRGBO(81, 81, 81, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromRGBO(37, 37, 37, 1),
          filled: true,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 20, bottom: 20, left: 40),
          hintText: "Password",
          hintStyle: TextStyle(
            color: Color.fromRGBO(81, 81, 81, 1),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide.none,
          ),
          fillColor: Color.fromRGBO(37, 37, 37, 1),
          filled: true,
        ),
      ),
    ],
  );
}
