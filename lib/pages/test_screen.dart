import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:penisure/data/test_data.dart';

class TestScreen extends StatefulWidget {
  TestScreen({super.key});
  int testScore = 0;

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  Welcome? testdata;

  @override
  void initState() {
    super.initState();
    loadTestData();
  }

  Future<void> loadTestData() async {
    final String faqDataJson =
    await rootBundle.loadString('assets/test_data.json');
    final decodedData = json.decode(faqDataJson);
    setState(() {
      testdata = Welcome.fromJson(decodedData);
    });
  }

  Widget createElevatedButton(String buttonText) {
    return SizedBox(
      width: 200, // Adjust the width as needed
      height: 100, // Adjust the height as needed
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(Colors.blue[900]!.value),
          padding: EdgeInsets.zero, // Set padding to zero
          minimumSize: const Size(
              200, 100),
        ),
        child: Center(
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 12)),
            )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          title: const Text("Test Screen"),
          elevation: 0,
          backgroundColor: Colors.blue[900],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text("How would you rate the hardness of your erection?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                const SizedBox(
                  height: 20,
                ),
                createElevatedButton(testdata?.ehs.ans1 ?? ""),
                const SizedBox(
                  height: 10,
                ),
                createElevatedButton(testdata?.ehs.ans2 ?? ""),
                const SizedBox(
                  height: 10,
                ),
                createElevatedButton(testdata?.ehs.ans3 ?? ""),
                const SizedBox(
                  height: 10,
                ),
                createElevatedButton(testdata?.ehs.ans4 ?? ""),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
