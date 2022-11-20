import 'package:flutter/material.dart';

import '../model/city_model.dart';

class CityWidget extends StatelessWidget {
  final City city;
  final Function longPress;
  final Function swipe;
  final Function ontap;
  TextStyle allsize = TextStyle(fontSize: 15);

  CityWidget({
    Key? key,
    required this.city,
    required this.longPress,
    required this.swipe,
    required this.ontap,
  }) : super(key: key);
  //---------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => longPress(city),
      onHorizontalDragEnd: (details) => swipe(city),
      onTap: () => ontap(
        city,
        context,
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(color: Colors.grey),
          ),
        ),
        margin: EdgeInsets.all(10.0),
        child: Row(
          children: <Widget>[
            Container(
              width: 10.0,
              height: 10.0,
              decoration: BoxDecoration(
                color: city.read ? Colors.transparent : Colors.green,
                shape: BoxShape.circle,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(city.foundationDate.toString().split(' ')[0],
                      style: allsize),
                  Text(city.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text(city.pais, style: allsize),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(
                city.image,
                height: 120.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
