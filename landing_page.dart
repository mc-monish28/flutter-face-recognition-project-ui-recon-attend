import 'package:flutter/material.dart';
import 'package:recon_attend/cards.dart';
import 'package:recon_attend/profile.dart';

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: const Color(0xFF302F5F),
              title: const Text(
                'Recon Attend',
                style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cpntext) => AppDrawer()));
                    },
                    icon: const Icon(Icons.account_circle_outlined)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Pending Tasks',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF302F5F)),
            ),
            const SizedBox(
              height: 20,
            ),
            cards(),
            cards(),
            cards(),
            cards(),
            cards(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Incomplete Tasks',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF302F5F)),
            ),
            const SizedBox(
              height: 20,
            ),
            PendingCard(),
            PendingCard(),
            PendingCard(),
            PendingCard(),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Completed Tasks',
              style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF302F5F)),
            ),
            const SizedBox(
              height: 20,
            ),
            CompletedCard(),
            CompletedCard(),
            CompletedCard(),
            CompletedCard(),
          ],
        ),
      ),
    );
  }
}
