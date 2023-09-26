import 'package:flutter/material.dart';
import 'package:wytvalley/View/Authentication/widgets/phonenumtextfield.dart';
import 'package:wytvalley/View/persional_Details/profile_screen.dart';
import 'package:wytvalley/Widget/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController txtController = TextEditingController();
  TextEditingController rflController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Let's get you started",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 35),
                const Text(
                  "Enter mobile number*",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                PhoneNumTextField(
                  hintText: "Enter 10 digit mobile number",
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: const Text(
                            "+ 91",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  textController: txtController,
                ),
                const SizedBox(height: 35),
                const Text(
                  "Referal Code (if any)",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  textController: rflController,
                  hintText: "Enter referal code",
                ),
                const SizedBox(height: 40),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomButton(
                    input: const Icon(
                      Icons.arrow_forward,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProfileScreen(phone: txtController.text),
                        ),
                      );
                    },
                    color: txtController.text.length == 10
                        ? Colors.yellow.shade600
                        : Colors.yellow.shade100,
                    inputColor: Colors.black,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height / 3.5),
                RichText(
                  text: TextSpan(
                    text: 'I AGREE TO THE',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey.shade600,
                      fontWeight: FontWeight.w600,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: ' PRIVACY POLICY',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          )),
                    ],
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
