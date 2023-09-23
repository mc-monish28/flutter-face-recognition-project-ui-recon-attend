import 'package:flutter/material.dart';

class RefreshingTextField extends StatefulWidget {
  final TextEditingController controller;

  RefreshingTextField({required this.controller});

  @override
  _RefreshingTextFieldState createState() => _RefreshingTextFieldState();
}

class _RefreshingTextFieldState extends State<RefreshingTextField> {
  bool isRefreshing = false;

  void _startRefreshing() {
    setState(() {
      isRefreshing = true;
    });

    // Simulate some async refreshing operation (replace with your actual logic)
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isRefreshing = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: TextField(
                controller: widget.controller,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter text",
                ),
              ),
            ),
          ),
        ),
        if (isRefreshing)
          Container(
            color: Colors.black.withOpacity(0.5),
            child: const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          child: InkWell(
            onTap: () {
              _startRefreshing();
            },
            child: Container(
              width: 50,
              color: Colors.blue,
              child: const Icon(
                Icons.refresh,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
