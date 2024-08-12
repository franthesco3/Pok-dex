class Pokemon {
  final int id;
  final int height;
  final String name;
  final String image;
  final int weight;
  final String imageSvg;
  final List<String> types;

  Pokemon.fromMap(Map<String, dynamic> map)
      : id = map['id'],
        name = map['name'],
        height = map['height'],
        weight = map['weight'],
        image = map['sprites']['front_default'],
        imageSvg = map['sprites']['other']['dream_world']['front_default'],
        types = List<String>.from(
            map['types'].map((element) => element['type']['name']));
}
