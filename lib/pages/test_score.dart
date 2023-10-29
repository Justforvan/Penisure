import 'package:flutter/material.dart';


class NextScreen extends StatelessWidget {
  final int testScore;
  String data (testscore) {
    if (testScore < 14) {
      return "You may have a severe erectile dysfunction. Please consult a doctor.";
    } else if (testScore < 21) {
      return "You may have a moderate erectile dysfunction. Please consult a doctor.";
    } else if (testScore < 26) {
      return "You may have a mild erectile dysfunction. Please consult a doctor.";
    } else {
      return "You have a normal erectile function.";
    }
  }

  const NextScreen({super.key, required this.testScore});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Score"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Total Test Score: $testScore",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 20),
            Text(data(testScore),
            style: const TextStyle(fontWeight: FontWeight.w700),
            textAlign: TextAlign.center),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/navscreen");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900],
              ),
              child: const Text("Return Home"),
            ),
          ],
        ),
      ),
    );
  }
}
