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
      ToDo(id: '01', todoText: 'Water Plants', isDone: true),
      ToDo(id: '02', todoText: 'Running', isDone: true),
      ToDo(
        id: '03',
        todoText: 'Iron Clothes',
      ),
      ToDo(
        id: '04',
        todoText: 'Take Bath',
      ),
      ToDo(
        id: '05',
        todoText: 'Dinner with Huzaifa',
      ),
      ToDo(
        id: '06',
        todoText: 'Skin Care Routine',
      ),
    ];
  }
}
