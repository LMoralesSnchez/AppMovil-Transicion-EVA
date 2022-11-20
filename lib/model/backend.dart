import 'city_model.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  /// Private list of emails. Hardcoded here for testing purposes.
  ///
  final _cities = [
    City(
      id: 1,
      name: 'Manta',
      population: 400000,
      foundationDate: DateTime(2020, 10, 03, 19, 43),
      pais: 'Ecuador',
      image: 'images/guayaquil.jpg',
    ),
    City(
      id: 2,
      name: 'Tegucigalpa',
      population: 300000,
      foundationDate: DateTime(2020, 10, 03, 19, 43),
      pais: 'Ecuador',
      image: 'images/guayaquil.jpg',
    ),
    City(
      id: 2,
      name: 'Tegucigalpa',
      population: 300000,
      foundationDate: DateTime(2020, 10, 03, 19, 43),
      pais: 'Ecuador',
      image: 'images/guayaquil.jpg',
    ),
    City(
      id: 2,
      name: 'Tegucigalpa',
      population: 300000,
      foundationDate: DateTime(2020, 10, 03, 19, 43),
      pais: 'Ecuador',
      image: 'images/guayaquil.jpg',
    ),
    City(
      id: 2,
      name: 'Tegucigalpa',
      population: 300000,
      foundationDate: DateTime(2020, 10, 03, 19, 43),
      pais: 'Ecuador',
      image: 'images/guayaquil.jpg',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<City> getCitys() {
    return _cities;
  }

  /// Marks email identified by its id as read.
  void markCityAsRead(int id) {
    final index = _cities.indexWhere((city) => city.id == id);
    _cities[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteCity(int id) {
    _cities.removeWhere((city) => city.id == id);
  }
}
