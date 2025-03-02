import 'package:flutter/material.dart';
import 'package:student/views/pages/forgot_password_page.dart';
import 'package:student/views/widget_tree.dart';
import 'package:student/views/widgets/hero_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();

  String confirmedEmail = '123';
  String confirmedPassword = '456';

  @override
  void dispose() {
    controllerEmail.dispose();
    controllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            HeroWidget(),
            SizedBox(height: 20.0),
            TextFormField(
              controller: controllerEmail,
              decoration: InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: () => setState(() {}),
            ),
            SizedBox(height: 10.0),
            TextFormField(
              controller: controllerPassword,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => setState(() {}),
            ),
            SizedBox(height: 20),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40.0),
              ),
              onPressed: () {
                onLoginPressed();
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Forgot Password button pressed')),
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ForgotPasswordPage();
                    },
                  ),
                );
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }

  void onLoginPressed() {
    if (controllerEmail.text == confirmedEmail &&
        controllerPassword.text == confirmedPassword) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return WidgetTree();
          },
        ),
      );
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Invalid Email or Password')));
    }
  }
}
