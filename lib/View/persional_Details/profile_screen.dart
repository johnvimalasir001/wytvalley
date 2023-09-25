import 'package:flutter/material.dart';
import 'package:wytvalley/View/persional_Details/address_screen.dart';
import 'package:wytvalley/Widget/widgets.dart';

class ProfileScreen extends StatefulWidget {
  final String phone;
  const ProfileScreen({super.key, required this.phone});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool isFemaleSelectedIndex = false;
  bool isMaleSelectedIndex = false;
  TextEditingController txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    const SizedBox(width: 10),
                    const Text(
                      "Complete Your Profile",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "Mobile Number",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: widget.phone,
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                const Text(
                  "First Name",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "Enter your First Name",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                const Text(
                  "last Name",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "Enter your Last Name",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Date of birth",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "YYYY-MM-DD",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Gender",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                    Container(
                      height: 60,
                      width: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isFemaleSelectedIndex = !isFemaleSelectedIndex;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow.shade500,
                              ),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: isFemaleSelectedIndex
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Female",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 120,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 20,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                isMaleSelectedIndex = !isMaleSelectedIndex;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.yellow.shade500,
                              ),
                              child: CircleAvatar(
                                radius: 8,
                                backgroundColor: isMaleSelectedIndex
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Male",
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: 'E-Mail',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black87),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' (Optional)',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "Enter your Email address",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: CustomButton(
                    input: const Text(
                      "Next",
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddressScreen()),
                      );
                    },
                    color: Colors.yellow.shade600,
                    inputColor: Colors.black,
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
