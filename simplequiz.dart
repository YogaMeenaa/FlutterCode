import 'dart:io';
//changes
class Quests {
  String? oop1;
  String? oop2;
  String? oop3;
  String? oop4;
  String? corr;
  Quests(dynamic question, String oop1, String oop2, String oop3, String oop4,
      String corr) {
    this.question = question;
    this.oop1 = oop1;
    this.oop2 = oop2;
    this.oop3 = oop3;
    this.oop4 = oop4;
    this.corr = corr;
  }
  set question(String question) {
    this.question = question;
  }

  String get question {
    return this.question;
  }

  void set Oop1(String oop1) {
    this.Oop1 = oop1;
  }

  String get Oop1 {
    return this.Oop1;
  }

  void set Oop2(String oop2) {
    this.Oop2 = oop2;
  }

  String get Oop2 {
    return this.Oop2;
  }

  void set Oop3(String oop3) {
    this.Oop1 = oop3;
  }

  String get Oop3 {
    return this.Oop3;
  }

  void set Oop4(String oop4) {
    this.Oop4 = oop4;
  }

  String get Oop4 {
    return this.Oop4;
  }

  void set Corr(String corr) {
    this.corr = corr;
  }

  String get Corr {
    return this.Corr;
  }
}

void main() {
  int score = 0;
  int total = 0;
  List<Quests> ques = [];
  ques.add(new Quests("enter the national bird?:", '1.peacock', '2.tiger',
      '3.parrot', '4.love birds', 'peacock'));
  ques.add(new Quests("apple using os is?:", '1.android', '2.windows',
      '3.linux', '4.ios', 'ios'));
  total = ques.length * 10;
  int quess = ques.length;
  for (int i = 0; i < quess; i++) {
    print(ques[i].question);
    print('1.' + ques[i].Oop1 + "2." + ques[i].Oop2);
    print('3.' + ques[i].Oop3 + "4." + ques[i].Oop4);
    print("your answer");
    var userin = int.parse(stdin.readLineSync()!);
    switch (userin) {
      case 1:
        if (ques[i].Oop1 == ques[i].corr) score = score + 10;

        break;
      case 2:
        if (ques[i].oop2 == ques.elementAt(i).corr) score = score + 10;

        break;
      case 3:
        if (ques[i].oop3 == ques.elementAt(i).corr) score = score + 10;

        break;
      case 4:
        if (ques[i].oop4 == ques.elementAt(i).corr) score = score + 10;

        break;
      default:
        print("invalidinput");
    }
  }
  print("${score}" + " $total");
}
