import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Progress Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
