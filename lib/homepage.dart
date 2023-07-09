import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedindex = 0;
  List<Widget> Widgetpages = [
    const Text(
      "this is my best for now  , click widget two :)",
      style: TextStyle(fontSize: 30),
    ),
    const Text(
      "A bout API i cant complate yet : entry sha1 and package name Don.. for now i try hard to understand what i miss, i need more time :( ",
      style: TextStyle(fontSize: 25, color: Colors.redAccent),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text("Welcome Home"),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedindex,
            fixedColor: Colors.lightGreenAccent,
            unselectedItemColor: Colors.teal,
            backgroundColor: Colors.black87,
            onTap: ((index) {
              setState(() {
                selectedindex = index;
              });
            }),
            items: const [
              BottomNavigationBarItem(
                  label: "widget one", icon: Icon(Icons.ac_unit_rounded)),
              BottomNavigationBarItem(
                  label: "widget two", icon: Icon(Icons.ac_unit_rounded))
            ]),
        body: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Widgetpages.elementAt(selectedindex),
        ));
  }
}
