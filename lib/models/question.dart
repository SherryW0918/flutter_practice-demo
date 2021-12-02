class Question {
  late String questionText;
  late List<String> options;
  late int answer;

  Question(String q,List<String> opt,int a,){
    questionText = q;
    options = opt;
    answer = a;
  }
}