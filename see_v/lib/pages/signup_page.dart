import 'package:flutter/material.dart';
import 'package:see_v/home_page.dart';

void main() {
  runApp(SignupPage());
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left half with blue background and new message
          Container(
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'LET\'S GET YOU SET UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'It should only take a couple of minutes to create your account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Right half with text fields and sign-up button
          Container(
            width: MediaQuery.of(context).size.width / 2,
            padding: EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  // First Name
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Middle Name (Optional)
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Middle Name (Optional)',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Last Name
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Email (Username)
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email (Username)',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Phone
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Date of Birth
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Gender
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 10.0),
                  // Confirm Password
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                    ),
                  ),
                  SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
