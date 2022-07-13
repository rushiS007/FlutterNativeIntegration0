import 'package:flutter/material.dart';
import '../data/http_helper.dart';
import '../models/travel.dart';
import '../screens/files.dart';
import '../screens/locationDetails.dart';
import '../screens/notes.dart';
import '../screens/posts.dart';
import '../screens/travelDetails.dart';
import '../data/shared_prefs.dart';
import '../models/location.dart';
import '../screens/passwords.dart';
import '../screens/settings.dart';
import 'files.dart';
import 'locationDetails.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int settingColor = 0xff1976d2;
  double fontSize = 16;
  SPSettings settings = SPSettings();
  TextEditingController cityAController = TextEditingController();
  TextEditingController cityBController = TextEditingController();
  // Location location = Location();
  Location location = Location();

  @override
  void initState() {
    getSettings();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String wiki_abstract = '';
    return FutureBuilder(
      future: getSettings(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Color(settingColor),
            title: const Text('TravelGo'),
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(settingColor),
                  ),
                  child: const Text('TravelGo Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                      )),
                ),
                ListTile(
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SettingsScreen(
                                  title: 'Settings',
                                )));
                  },
                ),
                ListTile(
                  title: Text(
                    'Passwords',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PasswordsScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    'Notes',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NotesScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    'Blogs',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostsScreen()));
                  },
                ),
                ListTile(
                  title: Text(
                    'Files',
                    style: TextStyle(
                      fontSize: fontSize,
                    ),
                  ),
                  onTap: () {
                    // Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FilesScreen())
                    );
                    // Navigator.of(context).push(PageRouteBuilder(
                    //     opaque: true,
                    //     transitionDuration: const Duration(),
                    //     pageBuilder: (BuildContext context, _, __) {
                    //       return FilesScreen();
                    //     },
                    //     transitionsBuilder:
                    //         (_, Animation<double> animation, __, Widget child) {
                    //       return SlideTransition(
                    //         position: Tween<Offset>(
                    //           begin: const Offset(1.0, 0.0),
                    //           end: Offset.zero,
                    //         ).animate(animation),
                    //         child: child,
                    //       );
                    //     }));

                  },
                ),
              ],
            ),
          ),
          body: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/rolands-varsbergs-miKmVyq3qhE-unsplash.jpg'),
                        fit: BoxFit.cover)),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: TextFormField(
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                          controller: cityAController,
                          decoration: InputDecoration(
                              hintText: 'Enter City to explore',
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.location_city_outlined,
                                color: Color(settingColor),
                                size: 32,
                              ),
                              // border: OutlineInputBorder(
                              //   borderRadius: BorderRadius.circular(20),
                              //   borderSide: BorderSide(width: 8,color:Color(settingColor)),
                              // ),
                              suffixIcon: IconButton(
                                icon: const Icon(
                                  Icons.keyboard_double_arrow_right,
                                  size: 30,
                                ),
                                color: Color(settingColor),
                                onPressed: () async {
                                  HttpHelper helper = HttpHelper();
                                  location = await helper
                                      .getLocation(cityAController.text);
                                  // setState(() {
                                  //   wiki_abstract = travelData.stops![0].wikipedia!.wikipediaAbstract!;
                                  //  });
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LocationDetails(
                                                location_name:
                                                    cityAController.text,
                                                location_info:
                                                    location.extract!,
                                                location_image: location
                                                    .originalimage!.source
                                                    .toString(),
                                                location_description:
                                                    location.description!,
                                                // location_name: cityAController.text,
                                                // location_info: location.stops![0].wikipedia!.wikipediaAbstract!,
                                                // location_image: location.stops![0].wikipedia!.image!,
                                                // // location_description: ,
                                                // location_region: location.stops![0].region!,
                                                
                                              )));
                                  // print(location.originalimage!.source
                                  //     .toString());
                                  FocusManager.instance.primaryFocus?.unfocus();
                                },
                              )),
                        ),
                      ),
                    ),
                    // const WikiAbstract()
                    // Text('$wiki_abstract')
                    // Padding(
                    //   padding: const EdgeInsets.fromLTRB(40, 40, 40, 0),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         borderRadius: BorderRadius.circular(20)),
                    //     child: TextFormField(
                    //       style: const TextStyle(
                    //           fontSize: 20, fontWeight: FontWeight.w500),
                    //       controller: cityBController,
                    //       decoration: InputDecoration(
                    //           hintText: 'Enter City to explore',
                    //           border: InputBorder.none,
                    //           focusedBorder: InputBorder.none,
                    //           prefixIcon: Icon(
                    //             Icons.location_city_outlined,
                    //             color: Color(settingColor),
                    //             size: 32,
                    //           ),
                    //           // border: OutlineInputBorder(
                    //           //   borderRadius: BorderRadius.circular(20),
                    //           //   borderSide: BorderSide(width: 8,color:Color(settingColor)),
                    //           // ),
                    //           suffixIcon: IconButton(
                    //             icon: const Icon(
                    //               Icons.keyboard_double_arrow_right,
                    //               size: 30,
                    //             ),
                    //             color: Color(settingColor),
                    //             onPressed: () async {
                    //               HttpHelper helper = HttpHelper();
                    //               location = await helper
                    //                   .getLocation(cityAController.text,cityBController.text);
                    //               // setState(() {
                    //               //   wiki_abstract = travelData.stops![0].wikipedia!.wikipediaAbstract!;
                    //               //  });
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => TravelDetails(
                    //                             // location_name:
                    //                             //     cityAController.text,
                    //                             // location_info:
                    //                             //     location.extract!,
                    //                             // location_image: location
                    //                             //     .originalimage!.source
                    //                             //     .toString(),
                    //                             // location_description:
                    //                             //     location.description!,
                    //                             cityA: cityAController.text,
                    //                             cityB: cityBController.text,
                    //                             travel_distance: location.distance!,
                    //                             travel_guide:' '
                    //                             //  location.travel!.general!.toString(),
                    //                           )
                    //                           ));
                    //               print(location.travel!.general.toString());
                    //               FocusManager.instance.primaryFocus?.unfocus();
                    //             },
                    //           )),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future getSettings() async {
    settings = SPSettings();
    settings.init().then((value) {
      setState(() {
        settingColor = settings.getColor();
        fontSize = settings.getFontSize();
      });
    });
  }
}
