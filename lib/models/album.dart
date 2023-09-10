class Album {
  final int id;
  final int userId;
  final String title;

  Album({
    required this.id,
    required this.userId,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) => Album(
        id: json["id"] as int,
        userId: json["userId"] as int,
        title: json["title"] as String,
      );
}
