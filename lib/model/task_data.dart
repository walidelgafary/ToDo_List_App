class Task {
  String? content;
  bool? isDone;
  static int countDone = 0;
  static int countDeu = 0;
  Task({required this.content, this.isDone = false}) {
    if (isDone!) {
      countDone++;
    } else {
      countDeu++;
    }
  }

  void changedTaskState() {
    isDone = !isDone!;
    if (isDone!) {
      countDone++;
      countDeu--;
    } else {
      countDone--;
      countDeu++;
    }
  }
}
