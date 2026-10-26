import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  void _showImplementDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return const AlertDialog(
          title: Text('Message'),
          content: Text("Need to implement"),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FlutterLogo(size: 50),
                    SizedBox(width: 12),
                    Text(
                      'Flutter',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w300,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Sign up',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 24),

                const Text('Name:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const TextField(),
                const SizedBox(height: 16),

                const Text('Email:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const TextField(),
                const SizedBox(height: 16),

                const Text('Password:', style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const TextField(obscureText: true),
                const SizedBox(height: 24),

                ElevatedButton(
                  onPressed: () => _showImplementDialog(context),
                  child: const Text('Sign up'),
                ),
                const SizedBox(height: 12),

                OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Back'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}