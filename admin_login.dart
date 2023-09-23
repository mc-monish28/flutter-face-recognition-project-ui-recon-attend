import 'package:flutter/material.dart';
import 'package:recon_attend/admin_home.dart';
import 'package:recon_attend/components.dart';

class adminlogin extends StatelessWidget {
  const adminlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: const Padding(
              padding: EdgeInsets.only(left: 0),
              child: Text(
                'Admin Login',
                style: TextStyle(
                  color: Color(0xFF302F5F),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w900,
                  height: 10,
                  letterSpacing: -0.30,
                ),
              ),
            ),
          ),
          const MyTextField(hinttext: 'Enter Username', obscuretext: false),
          const SizedBox(
            height: 25,
          ),
          const MyTextField(hinttext: 'Enter Password', obscuretext: true),
          const SizedBox(
            height: 25,
          ),
          myButton(onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (cpntext) => adminHomePage()));
          }),
        ],
      ),
    );
  }
}
