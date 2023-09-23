import 'package:flutter/material.dart';
import 'package:recon_attend/admin_login.dart';
import 'package:recon_attend/user_login.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                const SizedBox(
                  height: 250,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 13.0),
                  child: Text(
                    'Start using the app as?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF302F5F),
                      fontSize: 24,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                      height: 0,
                      letterSpacing: -0.30,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (cpntext) => const adminlogin()));
                    },
                    child: Container(
                      width: 327,
                      height: 94,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(width: 2, color: Color(0xFF302F5F)),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Organization',
                            style: TextStyle(
                              color: Color(0xFF302F5F),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 280,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'You are an administrator and would like to register your employees on this device for daily attendance.',
                                    style: TextStyle(
                                      color: Color(0x7F1E1E1E),
                                      fontSize: 13,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height: 1,
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF302F5F),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: GestureDetector(
                    onTap: () {
                      // Handle the button tap here
                      // You can add your desired functionality or navigation.
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (cpntext) => const Page4()));
                    },
                    child: Container(
                      width: 327,
                      height: 94,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                              width: 2, color: Color(0xFF302F5F)),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 10,
                            offset: Offset(0, 2),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Employee',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF302F5F),
                              fontSize: 20,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 1,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                            child: Container(
                                // You can add any widgets or decoration here for the small box if needed.
                                ),
                          ),
                          const Row(
                            children: [
                              SizedBox(
                                width: 280,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'You are an employee and have been granted\naccess by your organization to register \nattendance on your own device.',
                                    style: TextStyle(
                                      color: Color(0x7F1E1E1E),
                                      fontSize: 13,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      height:
                                          1.0, // Adjust line height as needed
                                    ),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Color(0xFF302F5F),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
