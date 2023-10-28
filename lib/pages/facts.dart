import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:accordion/accordion.dart';
import 'package:penisure/data/faq_data.dart';

class FaQPage extends StatefulWidget {
  const FaQPage({Key? key}) : super(key: key);

  @override
  _FaQPageState createState() => _FaQPageState();
}

class _FaQPageState extends State<FaQPage> {
  late Assets faqData;

  @override
  void initState() {
    super.initState();
    loadFaqData();
  }

  Future<void> loadFaqData() async {
    final String faqDataJson = await rootBundle.loadString('assets/faq_data.json');
    final decodedData = json.decode(faqDataJson);
    setState(() {
      faqData = Assets.fromJson(decodedData);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blue[900],
          title: const Text('Facts about your penis'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Your penis is unique. Here are some facts about it',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              if (faqData != null)
                Accordion(
                  scaleWhenAnimating: false,
                  children: [
                    AccordionSection(
                      header: Text(faqData.questions.q1,
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                      headerBorderRadius: 4,
                      headerPadding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      headerBackgroundColor: Colors.blue[900],
                      content: Text(faqData.answers.a1),
                      contentBorderRadius: 4,
                    ),
                    // Repeat for other sections
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
