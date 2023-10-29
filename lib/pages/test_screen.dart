import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int testScore = 0;
  Map<String, dynamic>? testData;

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
      testData = decodedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Screen"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonSet(
                testData: testData,
                onButtonPress: (score) {
                  setState(() {
                    testScore += score;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSet extends StatelessWidget {
  final Map<String, dynamic>? testData;
  final Function(int) onButtonPress;

  const ButtonSet({super.key, required this.testData, required this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    final ehsAnswers = testData?['ehs'];
    final iief5Questions = testData?['IIEF5']['questions'];
    final iief5Answers = testData?['IIEF5']['answers'];

    final ehsButtons = <Widget>[];
    final iiefButtons = <Widget>[];

    if (ehsAnswers is Map<String, dynamic>) {
      ehsAnswers.forEach((key, value) {
        ehsButtons.add(
          ButtonWithState(
            buttonText: value.toString(),
            question: 'EHS',
            onPressed: () {
              onButtonPress(int.parse(key));
            },
          ),
        );
      });
    }

    if (iief5Questions is Map<String, dynamic> && iief5Answers is Map<String, dynamic>) {
      iief5Questions.forEach((key, value) {
        iiefButtons.add(
          ButtonGroup(
            question: value.toString(),
            answers: iief5Answers,
            onPressed: (score) {
              onButtonPress(score);
            },
          ),
        );
      });
    }

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Text(
          "How would you rate the hardness of your erection?",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        ...ehsButtons,
        ...iiefButtons,
      ],
    );
  }
}

class ButtonWithState extends StatefulWidget {
  final String buttonText;
  final String question;
  final VoidCallback onPressed;

  const ButtonWithState({super.key, required this.buttonText, required this.question, required this.onPressed});

  @override
  _ButtonWithStateState createState() => _ButtonWithStateState();
}

class _ButtonWithStateState extends State<ButtonWithState> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isClicked = !isClicked;
        });
        widget.onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: isClicked ? Colors.green : Colors.blue[900],
        padding: EdgeInsets.zero,
        minimumSize: const Size(200, 100),
      ),
      child: Center(
        child: Text(
          widget.buttonText,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class ButtonGroup extends StatelessWidget {
  final String question;
  final Map<String, dynamic>? answers;
  final Function(int) onPressed;

  const ButtonGroup({super.key, required this.question, required this.answers, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final answerButtons = <Widget>[];

    if (answers is Map<String, dynamic>) {
      answers?.forEach((key, value) {
        answerButtons.add(
          ButtonWithState(
            buttonText: value.toString(),
            question: question,
            onPressed: () {
              onPressed(int.parse(key));
            },
          ),
        );
      });
    }

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const Divider(
          height: 1,
          color: Colors.grey,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          question,
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        ...answerButtons,
      ],
    );
  }
}
