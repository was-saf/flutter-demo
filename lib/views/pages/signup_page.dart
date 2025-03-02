import 'package:flutter/material.dart';
import 'package:student/views/widget_tree.dart';
import 'package:student/views/widgets/hero_widget.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => SignupPageState();
}

class SignupPageState extends State<SignupPage> {
  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerContact = TextEditingController();
  TextEditingController controllerCity = TextEditingController();
  TextEditingController controllerSchool = TextEditingController();

  String confirmedEmail = '123';
  String confirmedPassword = '456';

  @override
  void dispose() {
    controllerName.dispose();
    controllerEmail.dispose();
    controllerPassword.dispose();
    controllerContact.dispose();
    controllerCity.dispose();
    controllerSchool.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Signup')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeroWidget(),
              SizedBox(height: 20.0),
              _buildTextField(controllerName, 'Name:'),
              SizedBox(height: 10.0),
              _buildTextField(controllerEmail, 'Email:'),
              SizedBox(height: 10.0),
              _buildTextField(
                controllerPassword,
                'Enter Your Password:',
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              _buildTextField(controllerContact, 'Contact:'),
              SizedBox(height: 10.0),
              _buildTextField(controllerCity, 'City:'),
              SizedBox(height: 10.0),
              _buildTextField(controllerSchool, 'School/College:'),
              SizedBox(height: 20),
              FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(double.infinity, 40.0),
                ),
                onPressed: () {
                  onSignupPressed();
                },
                child: Text('Signup'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    TextEditingController controller,
    String Label, {
    bool obscureText = false,
  }) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        label: Text(Label),
        border: OutlineInputBorder(),
      ),
      onEditingComplete: () => setState(() {}),
    );
  }

  void onSignupPressed() {
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
