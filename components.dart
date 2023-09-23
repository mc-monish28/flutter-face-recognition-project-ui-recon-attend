import 'package:flutter/material.dart';
import 'package:recon_attend/admin_home.dart';

class MyTextField extends StatelessWidget {
  final String hinttext;
  final bool obscuretext;
  const MyTextField({
    Key? key,
    required this.hinttext,
    required this.obscuretext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        style: TextStyle(color: Color(0xFF302F5F)),
        obscureText: obscuretext,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF302F5F)),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hinttext,
          hintStyle: const TextStyle(
              color: Colors.grey), // Set hint text color to black
        ),
      ),
    );
  }
}

class myButton extends StatelessWidget {
  final Function()? onTap;
  const myButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: const Color(0xFF302F5F),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
            child: Text(
          'Log in',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}

class MyDatePicker extends StatefulWidget {
  final String hinttext;
  final TextEditingController controller;

  MyDatePicker({
    Key? key,
    required this.hinttext,
    required this.controller,
  }) : super(key: key);

  @override
  _MyDatePickerState createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
          context: context,
          initialDate: selectedDate ?? DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2101),
        )) ??
        DateTime.now();
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        widget.controller.text =
            "${picked.toLocal()}".split(' ')[0]; // Format the date as needed
      });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        readOnly: true, // Make the text field read-only
        onTap: () => _selectDate(context),
        style: TextStyle(color: Color(0xFF302F5F)),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF302F5F)),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hinttext,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        controller: widget.controller,
      ),
    );
  }
}

class MyTextArea extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;

  MyTextArea({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  _MyTextAreaState createState() => _MyTextAreaState();
}

class _MyTextAreaState extends State<MyTextArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        maxLines: 5, // Set the number of lines you want for the text area
        style: TextStyle(color: Color(0xFF302F5F)),
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF302F5F)),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
        ),
        controller: widget.controller,
      ),
    );
  }
}

class AssignButton extends StatelessWidget {
  final Function()? onTap;

  const AssignButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Show a snackbar with a success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('The task has been assigned successfully'),
            duration: Duration(seconds: 5), // Adjust the duration as needed
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(18),
        margin: const EdgeInsets.symmetric(horizontal: 25.0),
        decoration: BoxDecoration(
          color: const Color(0xFF302F5F),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text(
            'Assign',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
