import 'package:flutter/material.dart';
import 'package:see_v/home_page.dart';
import 'package:see_v/pages/signup_page.dart'; // Import the signup page

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _InstaLoginState();
}

class _InstaLoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: Container(), flex: 2),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: _centerWidget(),
              ),
              Flexible(child: Container(), flex: 2),
              const Divider(thickness: 2),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: _bottomWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _centerWidget() {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          width: 300,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Email',
              border: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(8),
            ),
          ),
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            border: Border.all(),
          ),
          width: 300,
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
              border: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              filled: true,
              suffixIcon: const Icon(Icons.remove_red_eye),
              contentPadding: const EdgeInsets.all(8),
            ),
            obscureText: true,
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 200,
          height: 48,
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              child: const Text('Log in'),
            ),
          ),
        ),
        const SizedBox(height: 24),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgot your login details?',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Text(
              ' Get help logging in',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ],
        ),
        const SizedBox(height: 24),
        const Row(
          children: [
            Flexible(child: Divider(thickness: 2)),
            Text(
              ' OR ',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
            Flexible(child: Divider(thickness: 2)),
          ],
        ),
        const SizedBox(height: 24),
        SizedBox(
          width: 200,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the signup page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            },
            child: const Text('Try Now'),
          ),
        ),
      ],
    );
  }

  Widget _bottomWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            // Navigate to the signup page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignupPage()),
            );
          },
          child: const Text(
            "Don't have an account?",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
        ),
        TextButton(
          onPressed: () {
            // Navigate to the signup page
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignupPage()),
            );
          },
          child: const Text(
            ' Sign up',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
