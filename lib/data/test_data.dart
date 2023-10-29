import 'dart:convert';

class Welcome {
  final Ehs ehs;
  final Iief5 iief5;

  Welcome({
    required this.ehs,
    required this.iief5,
  });

  factory Welcome.fromRawJson(String str) => Welcome.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    ehs: Ehs.fromJson(json["ehs"]),
    iief5: Iief5.fromJson(json["IIEF5"]),
  );

  Map<String, dynamic> toJson() => {
    "ehs": ehs.toJson(),
    "IIEF5": iief5.toJson(),
  };
}

class Ehs {
  final String ans1;
  final String ans2;
  final String ans3;
  final String ans4;

  Ehs({
    required this.ans1,
    required this.ans2,
    required this.ans3,
    required this.ans4,
  });

  factory Ehs.fromRawJson(String str) => Ehs.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Ehs.fromJson(Map<String, dynamic> json) => Ehs(
    ans1: json["ans1"],
    ans2: json["ans2"],
    ans3: json["ans3"],
    ans4: json["ans4"],
  );

  Map<String, dynamic> toJson() => {
    "ans1": ans1,
    "ans2": ans2,
    "ans3": ans3,
    "ans4": ans4,
  };
}

class Iief5 {
  final Questions questions;
  final Answers answers;

  Iief5({
    required this.questions,
    required this.answers,
  });

  factory Iief5.fromRawJson(String str) => Iief5.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Iief5.fromJson(Map<String, dynamic> json) => Iief5(
    questions: Questions.fromJson(json["questions"]),
    answers: Answers.fromJson(json["answers"]),
  );

  Map<String, dynamic> toJson() => {
    "questions": questions.toJson(),
    "answers": answers.toJson(),
  };
}

class Answers {
  final String point0;
  final String point1;
  final String point2;
  final String point3;
  final String point4;
  final String point5;

  Answers({
    required this.point0,
    required this.point1,
    required this.point2,
    required this.point3,
    required this.point4,
    required this.point5,
  });

  factory Answers.fromRawJson(String str) => Answers.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Answers.fromJson(Map<String, dynamic> json) => Answers(
    point0: json["point0"],
    point1: json["point1"],
    point2: json["point2"],
    point3: json["point3"],
    point4: json["point4"],
    point5: json["point5"],
  );

  Map<String, dynamic> toJson() => {
    "point0": point0,
    "point1": point1,
    "point2": point2,
    "point3": point3,
    "point4": point4,
    "point5": point5,
  };
}

class Questions {
  final String q1;
  final String q2;
  final String q3;
  final String q4;
  final String q5;

  Questions({
    required this.q1,
    required this.q2,
    required this.q3,
    required this.q4,
    required this.q5,
  });

  factory Questions.fromRawJson(String str) => Questions.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
    q1: json["q1"],
    q2: json["q2"],
    q3: json["q3"],
    q4: json["q4"],
    q5: json["q5"],
  );

  Map<String, dynamic> toJson() => {
    "q1": q1,
    "q2": q2,
    "q3": q3,
    "q4": q4,
    "q5": q5,
  };
}
