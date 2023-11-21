import 'package:flutter/material.dart';

class RegistrationPage4 extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage4> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _newEmailController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _repeatPasswordController = TextEditingController();

  bool _termsChecked = false;

  String _fullName = "";
  String _newEmail = "";
  String _newPassword = "";
  String _repeatPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/m.png', // Replace with your image asset path
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
              TextFormField(
                controller: _fullNameController,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                //  fillColor: Color.fromARGB(255, 2, 29, 102),
                 // filled: true,
                 //  border: OutlineInputBorder(
                 //    borderSide: BorderSide(color: Colors.white),
                 //  ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 2, 29, 102)), // Label color
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color when focused
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _fullName = value!;
                },
              ),
              SizedBox(height:7),
              TextFormField(
                controller: _newEmailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                //  fillColor: Color.fromARGB(255, 2, 29, 102),
               //   filled: true,
               //    border: OutlineInputBorder(
               //      borderSide: BorderSide(color: Colors.white),
               //    ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 2, 29, 102)), // Label color
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color when focused
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!isValidEmail(value)) {
                    return 'Please enter a valid email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _newEmail = value!;
                },
              ),
              SizedBox(height:7),

              TextFormField(
                controller: _newPasswordController,
                decoration: InputDecoration(
                  labelText: 'Password',
                  // fillColor: Color.fromARGB(255, 2, 29, 102),
                  // filled: true,
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  // ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 2, 29, 102)), // Label color
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color when focused
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _newPassword = value!;
                },
              ),
              SizedBox(height:7),

              TextFormField(
                controller: _repeatPasswordController,
                decoration: InputDecoration(
                  labelText: 'Repeat Password',
                  // fillColor: Color.fromARGB(255, 2, 29, 102),
                  // filled: true,
                  // border: OutlineInputBorder(
                  //   borderSide: BorderSide(color: Colors.white),
                  // ),
                  labelStyle: TextStyle(color: Color.fromARGB(255, 2, 29, 102)), // Label color
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color.fromARGB(255, 2, 29, 102)), // Underline color when focused
                  ),
                ),
                obscureText: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please repeat your password';
                  }
                  if (value != _newPasswordController.text) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onSaved: (value) {
                  _repeatPassword = value!;
                },
              ),
              SizedBox(height:7),
              Row(
                children: [
                  Checkbox(
                    value: _termsChecked,
                    onChanged: (value) {
                      setState(() {
                        _termsChecked = value!;
                      });
                    },
                  ),

                  Text(
                    'I agree to the terms',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 2, 29, 102),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate() && _termsChecked) {
                      _formKey.currentState!.save();
                      // Perform registration with _fullName, _newEmail, _newPassword
                      // You can add your registration logic here.
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                    MaterialStateProperty.all<Color>(Color.fromARGB(255, 2, 29, 102)),
                  ),
                  child: Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool isValidEmail(String email) {
    // Basic email validation
    final emailRegExp = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
    return emailRegExp.hasMatch(email);
  }
}

