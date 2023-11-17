import 'package:flutter/material.dart';
import 'package:hotel/widget/container_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool hidePassword = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            username(),
            const SizedBox(
              height: 20,
            ),
            password(),
          ],
        ),
      ),
    );
  }

  Widget username() {
    return const ContainerWidget(
      colorWidget: Color.fromARGB(255, 158, 158, 158),
      cir: 10,
      conHeight: 50,
      conWidth: 300,
      chWidget: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.account_box_outlined),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }

  Widget password() {
    return ContainerWidget(
      colorWidget: Color.fromARGB(255, 158, 158, 158),
      cir: 10,
      conHeight: 50,
      conWidth: 300,
      chWidget: TextField(
        obscureText: false,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock_outline),
          suffixIcon: IconButton(
            icon: hidePassword
                ? Icon(Icons.visibility_off_rounded)
                : Icon(Icons.visibility),
            onPressed: () {
              setState(() {
                hidePassword = !hidePassword;
              });
            },
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
