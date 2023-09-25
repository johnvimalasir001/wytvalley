import 'package:flutter/material.dart';
import 'package:wytvalley/Widget/widgets.dart';

class HouseDetailsScreen extends StatefulWidget {
  const HouseDetailsScreen({super.key});

  @override
  State<HouseDetailsScreen> createState() => _HouseDetailsScreenState();
}

class _HouseDetailsScreenState extends State<HouseDetailsScreen> {
  bool isIndependent = false;
  bool isComunity = false;
  TextEditingController txtController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
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
                      "Independent house",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "House No.",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "Enter house number",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: 'House Name',
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
                  hintText: "Enter house name",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Floor Number",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "Select your floor",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Street/Colony",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87),
                ),
                const SizedBox(height: 20),
                CustomTextFormField(
                  textController: txtController,
                  hintText: "Enter Street/Colony name",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
                RichText(
                  text: const TextSpan(
                    text: 'Landmark',
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
                  hintText: "Add Landmark",
                  prefixIcon: const SizedBox(),
                ),
                const SizedBox(height: 20),
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
                            builder: (context) => const HouseDetailsScreen()),
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
