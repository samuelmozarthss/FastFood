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
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Or Continue With',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                socialLogin(context),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Your Password?',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                loginButton(context),
              ],
            )
          ],
        ),
      ],
    );
  }
}

loginButton(context) {
  final ButtonStyle elevatedLoginButonStyle = ElevatedButton.styleFrom(
    primary: Color.fromRGBO(227, 26, 26, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(
        color: Color.fromRGBO(37, 37, 37, 1),
      ),
    ),
    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 50),
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );
  return ElevatedButton(
    style: elevatedLoginButonStyle,
    onPressed: () {},
    child: Text('Login'),
  );
}

socialLogin(context) {
  final ButtonStyle elevatedButonStyle = ElevatedButton.styleFrom(
    primary: Color.fromRGBO(37, 37, 37, 1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(18.0),
      side: BorderSide(
        color: Color.fromRGBO(37, 37, 37, 1),
      ),
    ),
    padding: EdgeInsets.symmetric(
      vertical: 18,
    ),
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
    ),
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: ElevatedButton.icon(
          icon: Image.asset(
            "assets/icons/facebook.png",
            width: 20,
            height: 20,
          ),
          style: elevatedButonStyle,
          onPressed: () {},
          label: Text('Facebook'),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      Expanded(
        child: ElevatedButton.icon(
          icon: Image.asset(
            "assets/icons/google.png",
            width: 20,
            height: 20,
          ),
          style: elevatedButonStyle,
          onPressed: () {},
          label: Text('Google'),
        ),
      ),
    ],
  );
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
