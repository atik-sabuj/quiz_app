List<String> items=
List.generate(100, (index) => 'Items no $index');

class Quiz {
  String question;
  List<String> answers;
  String correctAnswer;
  String givenAnswer;

  Quiz({
    required this.question,
    required this.answers,
    required this.correctAnswer,
    required this.givenAnswer,
  });
}

List<Quiz> quizList = [];
List<Quiz> quizList2 = [];
List<Quiz> quizList3 = [];

List<Quiz> get generateQuizList => [
  Quiz(
    question: 'Flutter is an __ mobile application development framework created by Google.',
    answers: <String>['Shareware', 'Open-Source', 'Both', 'None of the above',],
    correctAnswer: 'Open-Source',
    givenAnswer: '',
  ),
  Quiz(
    question: 'Which of the following best explains the flutter?',
    answers: <String>['It is an open-source database management system', 'This is an open-source backend toolkit', 'This is an open-source UI toolkit', 'None of the above',],
    correctAnswer: 'This is an open-source UI toolkit',
    givenAnswer: '',
  ),
  Quiz(
    question: 'Flutter apps are written in the __ language and make use of many of the language’s more advanced features.',
    answers: <String>['Dart', 'Kotlin', 'Java', 'Swift',],
    correctAnswer: 'Dart',
    givenAnswer: '',
  ),
  Quiz(
    question: 'Which Company Developed Flutter?',
    answers: <String>['Microsoft', 'Google', 'Facebook', 'IBM',],
    correctAnswer: 'Google',
    givenAnswer: '',
  ),
  Quiz(
    question: 'Which function is responsible for starting the program?',
    answers: <String>['runApp()', 'main()', 'run()', 'flutter()',],
    correctAnswer: 'main()',
    givenAnswer: '',
  ),
  Quiz(
    question: 'Which of the following are used to develop the native hybrid app from a single codebase?',
    answers: <String>['React Native', 'Flutter', 'React', 'Both A and B',],
    correctAnswer: 'Both A and B',
    givenAnswer: '',
  ),
  Quiz(
    question: 'SDK represents____',
    answers: <String>['Software Development Knowledge', 'Software Data Kit', 'Software Database Kit', 'Software Development Kit',],
    correctAnswer: 'Software Development Kit',
    givenAnswer: '',
  ),
  Quiz(
    question: 'A notable feature of the Dart platform is its support for hot reload',
    answers: <String>['False', 'True',],
    correctAnswer: 'True',
    givenAnswer: '',
  ),
  Quiz(
    question: 'How many child widgets can be added to Container Widget?',
    answers: <String>['Unlimited', '1', '2', '3',],
    correctAnswer: '1',
    givenAnswer: '',
  ),
  Quiz(
    question: 'What year did Bangladesh finally become independent and gain the name it has today?',
    answers: <String>['1947', '1905', '1971', '1952',],
    correctAnswer: '1971',
    givenAnswer: '',
  ),
  Quiz(
    question: 'What is the national flower of Bangladesh?',
    answers: <String>['Water lily', 'Rose', 'Tulip',],
    correctAnswer: 'Water lily',
    givenAnswer: '',
  ),
  Quiz(
    question: 'What is the main religion practiced in Bangladesh?',
    answers: <String>['Buddism', 'Islam', 'Hinduism','Christian',],
    correctAnswer: 'Islam',
    givenAnswer: '',
  ),
  Quiz(
    question: 'On which continent is Bangladesh located?',
    answers: <String>['Africa', 'Australia', 'Europe','Asia',],
    correctAnswer: 'Asia',
    givenAnswer: '',
  ),
  Quiz(
    question: 'Which river of Bangladesh originates in Tibet?',
    answers: <String>['Brahmaputra', 'Meghna', 'Jumna','Buriganga',],
    correctAnswer: 'Brahmaputra',
    givenAnswer: '',
  ),
  Quiz(
    question: 'What is the Time Zone of Bangladesh ?',
    answers: <String>['Utc + 5', 'Utc + 6', 'Utc + 7','Utc + 8',],
    correctAnswer: 'Utc + 6',
    givenAnswer: '',
  ),
];

class Result {
  int correct;
  int incorrect;

  Result({required this.correct, required this.incorrect});
}

Result get getResult {
  int correct = 0;
  int incorrect = 0;
  for(var quiz in quizList) {
    if(quiz.correctAnswer == quiz.givenAnswer) {
      correct++;
    }
  }
  incorrect = quizList.length - correct;
  return Result(correct: correct, incorrect: incorrect);
}
