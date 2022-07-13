import 'package:flutter/material.dart';
import '../data/shared_prefs.dart';
import '../models/location.dart';
import 'package:provider/provider.dart';

class LocationDetails extends StatefulWidget {
  LocationDetails(
      {Key? key,
      required this.location_name,
      required this.location_info,
      required this.location_image,
      // required this.location_region,
      required this.location_description
      })
      : super(key: key);
  String location_name = '';
  String location_info = '';
  String location_image = '';
  String location_description = '';
  // String location_region = '';

  @override
  State<LocationDetails> createState() => _LocationDetailsState();
}

class _LocationDetailsState extends State<LocationDetails> {
  SPSettings settings = SPSettings();
  int settingColor = 0xff039BE5;
  int settingSecondaryColor = 0xff4FC3F7;
  double fontSize = 16;
  @override
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
        title: Text(widget.location_name),
        backgroundColor: Color(settingColor),
      ),
      backgroundColor: Color(settingSecondaryColor),
      body: SingleChildScrollView
      (child:Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30), // Image border
                  child: SizedBox.fromSize(
                    size:const Size.fromRadius(170), // Image radius
                    child:
                        Image.network(widget.location_image, fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  widget.location_description,
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  widget.location_info,
                  style: TextStyle(fontSize: fontSize),
                ),
              ),
            ],
          
       
      )),
    );
  }
}
