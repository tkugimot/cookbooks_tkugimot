class Album {
  Album({this.userId, this.id, this.title});

  final int userId;
  final int id;
  final String title;

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
