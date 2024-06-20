import 'package:flutter/material.dart';

class dashboardscreen extends StatefulWidget {
  const dashboardscreen({super.key});

  @override
  State<dashboardscreen> createState() => _dashboardscreenState();
}

class _dashboardscreenState extends State<dashboardscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Container(
          child: const Text('Dash Board Screen'),
        ),
      ),
    );
  }
}
