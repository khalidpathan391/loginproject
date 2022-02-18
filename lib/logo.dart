import 'package:flutter/material.dart';

class Kirana extends StatelessWidget {
  const Kirana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 198, 230, 228),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Image.asset(
              "assets/images/Kirana.jpg",
              height: 200,
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "Kirana Store",
                style: TextStyle(color: Colors.lightBlue, fontSize: 25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
