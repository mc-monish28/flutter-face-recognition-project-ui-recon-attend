import 'package:flutter/material.dart';
import 'package:recon_attend/select_user.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 430,
            height: 932,
            padding: const EdgeInsets.only(
              top: 221,
              left: 51,
              right: 52,
              bottom: 308,
            ),
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 20),
                const SizedBox(
                  width: 307,
                  height: 138,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Easy Management\n',
                          style: TextStyle(
                            color: Color(0xFF302F5F),
                            fontSize: 24,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                            letterSpacing: -0.30,
                          ),
                        ),
                        TextSpan(
                          text: '\n',
                          style: TextStyle(
                            color: Color(0xFF302F5F),
                            fontSize: 19,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w800,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text:
                              'It provides a cost effective\nand easy solution that doesn’t\nrequire biometric devices, network \nconnectivity, annual maintenance\nor anyone to look after the device',
                          style: TextStyle(
                            color: Color(0xFF302F5F),
                            fontSize: 15,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 175,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cpntext) => Page3()));
                    },
                    child: const Text('Select user category',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF302F5F),
                        )))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
