import 'package:flutter/material.dart';
import 'package:see_v/home_page.dart';

void main() {
  runApp(const SignupPage());
}

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SignUpPage(),
    );
  }
}

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left half with blue background and new message
          Container(
            width: MediaQuery.of(context).size.width / 2,
            color: Colors.blue,
            child: const Center(
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
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  // First Name
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Middle Name (Optional)
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Middle Name (Optional)',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Last Name
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Email (Username)
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Email (Username)',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Phone
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Date of Birth
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Gender
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Password
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Confirm Password
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                      );
                    },
                    child: const Text('Sign Up'),
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
