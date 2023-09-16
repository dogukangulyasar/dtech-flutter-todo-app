class Todo {
  Todo({
    required this.id,
    required this.todo,
    required this.completed,
    required this.userId,
  });

  int? id;
  String? todo;
  bool? completed;
  int? userId;

  // From json
  Todo.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    todo = json["todo"];
    completed = json["completed"];
    userId = json["userId"];
  }

  // To json
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data["id"] = id;
    data["todo"] = todo;
    data["completed"] = completed;
    data["userId"] = userId;

    return data;
  }
}
