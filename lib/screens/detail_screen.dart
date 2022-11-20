import 'package:flutter/material.dart';

import '../model/city_model.dart';

class DetailScreen extends StatelessWidget {
  final City city;
  TextStyle allsize = TextStyle(fontSize: 17);
  BoxDecoration linesize = BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1, color: Colors.red),
    ),
  );

  DetailScreen({Key? key, required this.city}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(city.name),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Text(
                'From:' + city.pais,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              decoration: linesize,
            ),
            
            SizedBox(height: 15),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(city.name, style: allsize),
                  Text(
                    city.foundationDate.toString().split(' ')[0],
                    style: TextStyle(fontSize: 17, color: Colors.grey),
                  ),
                ],
              ),
              decoration: linesize,
            ),
            SizedBox(height: 15),
            Text(city.population.toString(), style: allsize)
          ],
        ),
      ),
    );
  }
}
