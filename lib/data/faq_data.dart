import 'dart:convert';

class Assets {
  final Questions questions;
  final Answers answers;

  Assets({
    required this.questions,
    required this.answers,
  });

  factory Assets.fromRawJson(String str) => Assets.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Assets.fromJson(Map<String, dynamic> json) => Assets(
    questions: Questions.fromJson(json["questions"]),
    answers: Answers.fromJson(json["answers"]),
  );

  Map<String, dynamic> toJson() => {
    "questions": questions.toJson(),
    "answers": answers.toJson(),
  };
}

class Answers {
  final String a1;
  final String a2;
  final String a3;
  final String a4;
  final String a5;
  final String a6;
  final String a7;
  final String a8;
  final String a9;
  final String a10;
  final String a11;
  final String a12;
  final String a13;

  Answers({
    required this.a1,
    required this.a2,
    required this.a3,
    required this.a4,
    required this.a5,
    required this.a6,
    required this.a7,
    required this.a8,
    required this.a9,
    required this.a10,
    required this.a11,
    required this.a12,
    required this.a13,
  });

  factory Answers.fromRawJson(String str) => Answers.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
    a1: json["a1"],
    a2: json["a2"],
    a3: json["a3"],
    a4: json["a4"],
    a5: json["a5"],
    a6: json["a6"],
    a7: json["a7"],
    a8: json["a8"],
    a9: json["a9"],
    a10: json["a10"],
    a11: json["a11"],
    a12: json["a12"],
    a13: json["a13"],
  );

  Map<String, dynamic> toJson() => {
    "a1": a1,
    "a2": a2,
    "a3": a3,
    "a4": a4,
    "a5": a5,
    "a6": a6,
    "a7": a7,
    "a8": a8,
    "a9": a9,
    "a10": a10,
    "a11": a11,
    "a12": a12,
    "a13": a13,
  };
}

class Questions {
  final String q1;
  final String q2;
  final String q3;
  final String q4;
  final String q5;
  final String q6;
  final String q7;
  final String q8;
  final String q9;
  final String q10;
  final String q11;
  final String q12;
  final String q13;

  Questions({
    required this.q1,
    required this.q2,
    required this.q3,
    required this.q4,
    required this.q5,
    required this.q6,
    required this.q7,
    required this.q8,
    required this.q9,
    required this.q10,
    required this.q11,
    required this.q12,
    required this.q13,
  });

  factory Questions.fromRawJson(String str) => Questions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
    q1: json["q1"],
    q2: json["q2"],
    q3: json["q3"],
    q4: json["q4"],
    q5: json["q5"],
    q6: json["q6"],
    q7: json["q7"],
    q8: json["q8"],
    q9: json["q9"],
    q10: json["q10"],
    q11: json["q11"],
    q12: json["q12"],
    q13: json["q13"],
  );

  Map<String, dynamic> toJson() => {
    "q1": q1,
    "q2": q2,
    "q3": q3,
    "q4": q4,
    "q5": q5,
    "q6": q6,
    "q7": q7,
    "q8": q8,
    "q9": q9,
    "q10": q10,
    "q11": q11,
    "q12": q12,
    "q13": q13,
  };
}
