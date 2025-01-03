import 'package:flutter/material.dart';
import 'homepage.dart'; // Import Homepage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/glogo.png', height: 20),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline, color: Colors.black),
            onPressed: () {
              // Handle help button press
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Enter your registered phone number to log in',
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: '+62 12345678910',
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/indoflag.png', height: 20, width: 20),
                      SizedBox(width: 8),
                      Text('+62'),
                    ],
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                filled: true, fillColor: Colors.grey[200],
              ),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {
              // Add your onPressed code here!
              },
              child: Text(
              'Issue with number?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.green,
                decoration: TextDecoration.underline,
              ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to homepage
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50), // Make button background wider
                  ),
                  child: const Text('Continue'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}