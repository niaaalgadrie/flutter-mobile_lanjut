import 'package:flutter/material.dart';

class logoutView extends StatefulWidget {
  const logoutView({super.key});

  @override
  State<logoutView> createState() => _logoutViewState();
}

class _logoutViewState extends State<logoutView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Logout',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}