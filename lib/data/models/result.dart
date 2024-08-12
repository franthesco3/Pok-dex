class Result {
  final String name;

  Result.fromMap(Map<String, dynamic> map)
      : name = map['name'];
}