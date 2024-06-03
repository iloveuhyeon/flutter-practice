class Api {
  int? userid;
  int? id;
  String? title;
  bool? completed;

  Api({
    required this.userid,
    required this.id,
    required this.title,
    required this.completed,
  });

  Api.fromJson(Map<String, dynamic> json) {
    userid = json['userid'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }
}
