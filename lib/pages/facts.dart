import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:penisure/components/bottom_navigation.dart';
import 'package:penisure/data/faq_data.dart';

class AccordionWidget extends StatefulWidget {
  final String title;
  final Widget content;

  const AccordionWidget({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  _AccordionWidgetState createState() => _AccordionWidgetState();
}

class _AccordionWidgetState extends State<AccordionWidget> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isExpanded = !isExpanded;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.vertical(
                  top: const Radius.circular(8),
                  bottom: Radius.circular(isExpanded ? 0 : 8),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          if (isExpanded)
            Container(
              decoration: BoxDecoration(
                color: Colors.blue[100],
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(8),
                ),
              ),
              padding: const EdgeInsets.all(16.0),
              child: widget.content,
            ),
          const SizedBox(height: 8), // Add spacing between sections
        ],
      ),
    );
  }
}



class FaQPage extends StatefulWidget {
  const FaQPage({Key? key}) : super(key: key);

  @override
  _FaQPageState createState() => _FaQPageState();
}

class _FaQPageState extends State<FaQPage> {
  Assets? faqData;

  @override
  void initState() {
    super.initState();
    loadFaqData();
  }

  Future<void> loadFaqData() async {
    final String faqDataJson =
    await rootBundle.loadString('assets/faq_data.json');
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
          actions: [
            Icon(MdiIcons.searchWeb)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  style: TextStyle(fontSize: 18),
                  'Your penis is an incredibly unique and fascinating part of your body. There \'s so much more to it than meets the eye. Let \'s explore some intriguing facts and insights that will help you appreciate its complexity and function like never before. Join us on this enlightening journey into the world of this distinctive and important organ.',
                  textAlign: TextAlign.center,
                ),
              ),
              if (faqData != null) ...buildAccordionWidgets(),
            ],
          ),
        ),
      ),
    );
  }

  List<AccordionWidget> buildAccordionWidgets() {
    return [
      AccordionWidget(
        title: faqData!.questions.q1,
        content: Text(faqData!.answers.a1),
      ),
      AccordionWidget(
        title: faqData!.questions.q2,
        content: Text(faqData!.answers.a2),
      ),
      AccordionWidget(
        title: faqData!.questions.q3,
        content: Text(faqData!.answers.a3),
      ),
      AccordionWidget(
        title: faqData!.questions.q4,
        content: Text(faqData!.answers.a4),
      ),
      AccordionWidget(
        title: faqData!.questions.q5,
        content: Text(faqData!.answers.a5),
      ),
      AccordionWidget(
        title: faqData!.questions.q6,
        content: Text(faqData!.answers.a6),
      ),
      AccordionWidget(
        title: faqData!.questions.q7,
        content: Text(faqData!.answers.a7),
      ),
      AccordionWidget(
        title: faqData!.questions.q8,
        content: Text(faqData!.answers.a8),
      ),
      AccordionWidget(
        title: faqData!.questions.q9,
        content: Text(faqData!.answers.a9),
      ),
      AccordionWidget(
        title: faqData!.questions.q10,
        content: Text(faqData!.answers.a10),
      ),
      AccordionWidget(
        title: faqData!.questions.q11,
        content: Text(faqData!.answers.a11),
      ),
      AccordionWidget(
        title: faqData!.questions.q12,
        content: Text(faqData!.answers.a12),
      ),
      AccordionWidget(
        title: faqData!.questions.q13,
        content: Text(faqData!.answers.a13),
      ),
    ];
  }
}
