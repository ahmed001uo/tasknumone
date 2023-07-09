import 'package:flutter/material.dart';

import 'package:tasknumone/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("images/1.jpg")),
        Container(
          padding: const EdgeInsets.all(20),
          child: Form(
              child: Column(
            children: [
              const SizedBox(height: 10),
              Container(
                margin: const EdgeInsets.all(10),
              ),
              Center(
                child: MaterialButton(
                  padding: const EdgeInsets.all(10),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const HomePage();
                    }));
                  },
                  child: const Text("Login"),
                ),
              ),
            ],
          )),
        )
      ],
    ));
  }
}
