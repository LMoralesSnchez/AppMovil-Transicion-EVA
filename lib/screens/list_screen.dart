import 'package:flutter/material.dart';


import '../model/backend.dart';
import '../model/city_model.dart';
import '../widgets/city_widget.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState();
}

//---------------------------------------------------------------
class _ListScreenState extends State<ListScreen> {
  void longPress(City city) {
    setState(() {
      Backend().markCityAsRead(city.id);
    });
  }

  void swipe(City city) {
    setState(() {
      Backend().deleteCity(city.id);
    });
  }

  void ontap(City city, context) {
    setState(() {
      Backend().markCityAsRead(city.id);
    });
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailScreen(city: city)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: Backend()
          .getCitys()
          .map((city) => CityWidget(
                city: city,
                longPress: longPress,
                swipe: swipe,
                ontap: ontap,
              ))
          .toList(),
    );
  }
}
