import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';

class FaQPage extends StatelessWidget {
  const FaQPage({super.key});

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
              Accordion(
                scaleWhenAnimating: false,
                children: [
                  AccordionSection(
                    header: const Text('Is my penis size smaller than normal?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    headerBorderRadius: 4,
                    headerPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    headerBackgroundColor: Colors.blue[900],
                    content: const Text(
                        'Lokasi adalah fitur yang dapat membantu anda mencari lokasi ATM terdekat.'),
                    contentBorderRadius: 4,
                  ),
                  AccordionSection(
                    header: const Text('Apa itu Lokasi?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    headerBorderRadius: 4,
                    headerPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    headerBackgroundColor: Colors.blue[900],
                    content: const Text(
                        'Lokasi adalah fitur yang dapat membantu anda mencari lokasi ATM terdekat.'),
                    contentBorderRadius: 4,
                  ),
                  AccordionSection(
                    header: const Text('Apa itu Lokasi?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    headerBorderRadius: 4,
                    headerPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    headerBackgroundColor: Colors.blue[900],
                    content: const Text(
                        'Lokasi adalah fitur yang dapat membantu anda mencari lokasi ATM terdekat.'),
                    contentBorderRadius: 4,
                  ),
                  AccordionSection(
                    header: const Text('Apa itu Lokasi?',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    headerBorderRadius: 4,
                    headerPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    headerBackgroundColor: Colors.blue[900],
                    content: const Text(
                        'Lokasi adalah fitur yang dapat membantu anda mencari lokasi ATM terdekat.'),
                    contentBorderRadius: 4,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
