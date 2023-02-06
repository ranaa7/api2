class Postmodel2 {
  Postmodel2({
    required this.firstName,
    required this.lastName,
    required this.age,
  });

  String firstName;
  String lastName;
  int age;

  factory Postmodel2.fromJson(Map<String, dynamic> json) => Postmodel2(
    firstName: json["firstName"],
    lastName: json["lastName"],
    age: json["age"],
  );

  Map<String, dynamic> toJson() => {
    "firstName": firstName,
    "lastName": lastName,
    "age": age,
  };
}