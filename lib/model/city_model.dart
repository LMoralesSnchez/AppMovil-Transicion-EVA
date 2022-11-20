class City {
  final int id;
  final String name;
  final int population;
  final DateTime foundationDate;
  final String pais;
  final String image;
  bool read;

  City({
    required this.id,
    required this.name,
    required this.population,
    required this.foundationDate,
    required this.pais,
    required this.image,
    this.read = false,
  });
}

