class QuizQuestion {
  const QuizQuestion(this.text, this.answer);
  final String text;
  final List<String> answer;

  List<String> getShuffledAnswer() {
    List.of(answer).shuffle();
  }
}
