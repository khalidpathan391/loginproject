import 'package:flutter/material.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  String? gender;
  String? pin;
  String? city;
  String? state;
  List<String> GenderList = ["Male", "Female", "If_intrested_any", "Others"];
  List<String> PinList = ["241302", "209868", "226001", "226005", "Others"];
  List<String> CityList = ["Hardoi", "Unnao", "Lucknow", "Delhi", "Others"];
  List<String> StateList = [
    "Uttar_Pradesh",
    "Maharastra",
    "Kerla",
    "Punjab",
    "Others"
  ];
  TextEditingController namectrl = new TextEditingController();
  TextEditingController mobilectrl = new TextEditingController();
  TextEditingController emailctrl = new TextEditingController();
  TextEditingController streetctrl = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width - 40;
    //double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("**** ----KiRaNa StORe-----******")),
      ),
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  color: Color.fromARGB(255, 241, 235, 235),
                  // decoration:
                  //     BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Image.asset(
                    "assets/images/kirana2.jpg",
                    // cacheWidth: 100,
                    height: 200,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "KiRaNa",
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: BuildTextField(namectrl, "Name"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: BuildTextField(mobilectrl, "Mobile Number"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: BuildTextField(emailctrl, "E_Mail"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: DropdownButton(
                  onChanged: (value) {
                    setState(() {
                      gender = value as String;
                    });
                  },
                  hint: const Text("Gender"),
                  underline: const Text(""),
                  isExpanded: true,
                  value: gender,
                  items: GenderList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    );
                  }).toList()),
            ),
            SizedBox(
              height: 15,
            ),
            Center(
              child: Container(
                child: Text(
                  "***---Plese Enter your Location-----***",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: BuildTextField(streetctrl, "Street"),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: DropdownButton(
                  onChanged: (value) {
                    setState(() {
                      pin = value as String;
                    });
                  },
                  hint: const Text("Pincode"),
                  underline: const Text(""),
                  isExpanded: true,
                  value: pin,
                  items: PinList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    );
                  }).toList()),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: DropdownButton(
                  onChanged: (value) {
                    setState(() {
                      city = value as String;
                    });
                  },
                  hint: const Text("City"),
                  underline: const Text(""),
                  isExpanded: true,
                  value: city,
                  items: CityList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    );
                  }).toList()),
            ),
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(border: buildBottomBorder(Colors.blue)),
              child: DropdownButton(
                  onChanged: (value) {
                    setState(() {
                      state = value as String;
                    });
                  },
                  hint: const Text("State"),
                  underline: const Text(""),
                  isExpanded: true,
                  value: state,
                  items: StateList.map<DropdownMenuItem<String>>((e) {
                    return DropdownMenuItem<String>(
                      child: Text(e),
                      value: e,
                    );
                  }).toList()),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                      "Saved",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
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
                      "Fetch",
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
            )
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
