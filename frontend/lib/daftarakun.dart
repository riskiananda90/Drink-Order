import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterPage(),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0XFF1E1E2C), // Ubah warna latar belakang menjadi hitam
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Welcome To Drink Order",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors
                      .white, // Ubah warna teks menjadi putih agar terlihat di latar belakang hitam
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Create your Account",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey, // Tetap menggunakan warna teks abu-abu
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your full name",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter your email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Confirm password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Register",
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  // Navigate to Sign In Page
                },
                child: const Text(
                  "Already have an account? sign in",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              // Ikon untuk login dengan Google, Facebook, dan Apple
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Facebook Button
                  TextButton.icon(
                    icon: Image.asset(
                      'assets/images/facebook.png', // Use your Facebook image
                      width: 24, // Adjust the width for smaller icons
                      height: 24, // Adjust the height for smaller icons
                    ),
                    label: const Text(
                      'Facebook',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white), // Customize text style
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: Size(150, 30), // Adjust button size
                    ),
                    onPressed: () {
                      // Implement login with Facebook
                    },
                  ),
                  const SizedBox(width: 16),
                  TextButton.icon(
                    icon: Image.asset(
                      'assets/images/google.png', // Use your Google image
                      width: 24, // Adjust the width for smaller icons
                      height: 24, // Adjust the height for smaller icons
                    ),
                    label: const Text(
                      'Google',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.black), // Customize text style
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: Size(150, 30), // Adjust button size
                    ),
                    onPressed: () {
                      // Implement login with Google
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
