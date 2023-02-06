class Postmodel3 {
  Postmodel3({
    required this.body,
    required this.postId,
    required this.userId,
  });

  String body;
  int postId;
  int userId;

  factory Postmodel3.fromJson(Map<String, dynamic> json) => Postmodel3(
    body: json["body"],
    postId: json["postId"],
    userId: json["userId"],
  );

  Map<String, dynamic> toJson() => {
    "body": body,
    "postId": postId,
    "userId": userId,
  };
}