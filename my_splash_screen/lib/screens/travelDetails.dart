import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import '../data/shared_prefs.dart';

class TravelDetails extends StatefulWidget {
  TravelDetails(
      {Key? key,
      required this.cityA,
      required this.cityB,
      required this.travel_distance,
      required this.travel_guide
    })
      : super(key: key);
  String cityA, cityB, travel_guide='';
  int travel_distance;
 

  @override
  State<TravelDetails> createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  SPSettings settings = SPSettings();

  int settingColor = 0xff039BE5;

  int settingSecondaryColor = 0xff4FC3F7;

  double fontSize = 16;
  void initState() {
    settings.init().then((_) {
      setState(() {
        settingColor = settings.getColor();
        fontSize = settings.getFontSize();
        settingSecondaryColor = settings.getSecondaryColor();
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Travel from ${widget.cityA} to ${widget.cityB}',
          style: TextStyle(fontSize: fontSize),
        ),
        backgroundColor: Color(settingColor),
      ),
      body: SingleChildScrollView(child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Distance between 2 cities is ${widget.travel_distance} kms'),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.travel_guide),
          )
        ],
      )),
    );
  }
}
