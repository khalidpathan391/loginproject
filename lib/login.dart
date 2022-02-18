import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

TextEditingController user_id = new TextEditingController();
TextEditingController password = new TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/images/market.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/m2i.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/m4.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/me.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/m5.jpeg",
                      height: 250,
                      width: 250,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: buildBottomBorder(Color.fromARGB(255, 243, 177, 33))),
              child: BuildTextField(
                user_id,
                "User_id",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  border: buildBottomBorder(Color.fromARGB(255, 243, 152, 33))),
              child: BuildTextField(password, "Password"),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 170, 33),
                      border:
                          Border.all(color: Color.fromARGB(255, 76, 91, 175)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  //  SizedBox(
                  //  height: 10,
                ),
                // ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              //  color: Colors.blue,
              margin: EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Create new acount ? press here",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 243, 145, 33),
                      border:
                          Border.all(color: Color.fromARGB(255, 76, 91, 175)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Signup",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

TextField BuildTextField(TextEditingController controller, String label) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      label: Text(label),
      // labelStyle: TextStyle(color: Colors.blue),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.blue),
      ),
    ),
  );
}

buildBottomBorder(var color) {
  return Border(
    bottom: BorderSide(
      color: color,
      width: 2,
    ),
  );
}
