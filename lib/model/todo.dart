class ToDo {
  String? id;
  String? todoText;
  bool isDone;

  ToDo({
    required this.id,
    required this.todoText,
    this.isDone = false,
  });

  static List<ToDo> todoList() {
    return [
      ToDo(id:'01',todoText: 'Morning walk',isDone: true),
      ToDo(id:'02',todoText: 'Breakfast',isDone: true),
      ToDo(id:'03',todoText: 'Lunch'),
      ToDo(id:'04',todoText: 'Dinner',isDone: true),
      ToDo(id: '05', todoText: 'Sleep'),
    ];
  }
}