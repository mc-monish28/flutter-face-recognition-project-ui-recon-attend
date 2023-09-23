import 'package:flutter/material.dart';
import 'get_started.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        body: ListView(children: [
          Page1(),
        ]),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 220),
      child: Center(
        child: Column(
          children: [
            const SizedBox(
              width: 500,
              height: 138,
              child: Center(
                // Center the text content here
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Face Attendance\n',
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
                            'An easy way of attendance system\nby verifying your face against the\nenrolled face to mark your daily\nattendance.',
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
            ),
            const SizedBox(
              height: 200,
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Page2()),
                );
              },
              child: const Text(
                'Get Started',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF302F5F),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
