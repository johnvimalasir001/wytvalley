import 'package:flutter/material.dart';

import 'package:wytvalley/View/views.dart';
import 'package:wytvalley/Widget/custom_button.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                const Image(
                  image: AssetImage("assets/Logos/WYTVALLEY LOGO copy.PNG"),
                  height: 350,
                  width: 350,
                ),
                Text(
                  "WAKE UP\nTO HEALTH!",
                  style: TextStyle(
                    color: Colors.yellow.shade600,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 35),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.yellow.shade600,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 45,
                      vertical: 30,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: CustomButton(
                            input: const Text(
                              "Sign In",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignInScreen(),
                                ),
                              );
                            },
                            color: Colors.white,
                            inputColor: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 25),
                        SizedBox(
                          height: 50,
                          width: double.infinity,
                          child: CustomButton(
                            input: const Text(
                              "Sign Up",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpScreen(),
                                ),
                              );
                            },
                            color: Colors.white,
                            inputColor: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 35),
                        GestureDetector(
                          onTap: () {},
                          child: const Text(
                            "I just want to browse",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
