import 'package:flutter/material.dart';
import 'package:recon_attend/admin_home.dart';

import 'package:recon_attend/components.dart';

class AssignTasks extends StatelessWidget {
  const AssignTasks({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (cpntext) => adminHomePage()));
                    },
                    icon: const Icon(Icons.arrow_back_ios_outlined)),
                const SizedBox(
                  width: 0,
                ),
                const Text(
                  'Assign Tasks',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const MyTextField(hinttext: 'Set task name', obscuretext: false),
            const SizedBox(
              height: 20,
            ),
            MyDatePicker(
                hinttext: 'Select Deadline',
                controller: TextEditingController()),
            const SizedBox(
              height: 20,
            ),
            MyTextArea(
                hintText: 'Task Description',
                controller: TextEditingController()),
            const SizedBox(
              height: 20,
            ),
            AssignButton(onTap: () {})
          ],
        ),
      ),
    );
  }
}
