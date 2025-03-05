import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Class'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'City'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Contact'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Subjects'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Board'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Timings'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'No. of days'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Mode of tuition'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Fee'),
              enabled: false,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Additional remarks'),
              enabled: false,
            ),
          ],
        ),
      ),
    );
  }
}

