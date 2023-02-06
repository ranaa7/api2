class Postmodel4 {
  Postmodel4({
    required this.name,
    required this.des,
    required this.id,
    required this.temp,

  });

  String name;
  String des;
  int id;
  double temp;

  factory Postmodel4.fromJson(Map<String, dynamic> json) => Postmodel4(
    name: json["name"],
    des: json["weather"][0]["description"],
    id: json["id"],
    temp: json["main"]["temp"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "description": des,
    "id": id,
    "temp":temp
  };
}