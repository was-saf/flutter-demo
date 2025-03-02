import 'package:flutter/material.dart';
import 'package:student/views/pages/login_page.dart';
import 'package:student/views/pages/signup_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset('assets/images/logo.png'),
              FittedBox(
                child: Text(
                  'Student Handbook',
                  style: TextStyle(
                    fontSize: 500,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    ),
                  );
                },
                child: Text('Get Started'),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
