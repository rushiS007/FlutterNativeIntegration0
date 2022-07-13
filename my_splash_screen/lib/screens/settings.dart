import 'package:flutter/material.dart';
import '/data/shared_prefs.dart';
import '../models/font_size.dart';

class SettingsScreen extends StatefulWidget {
  final String title;
  const SettingsScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  int settingColor = 0xff039BE5;
  int settingSecondaryColor = 0xff4FC3F7;
  double fontSize = 16;
  List<int> colors = [
    0xFFE53935,
    0xFF8E24AA,
    0xFF1E88E5,
    0xFF00897B,
    0xFFFDD835
  ];

  List<int> secondaryColors = [
    0xFFE57373,
    0xFFBA68C8,
    0xFF64B5F6,
    0xFF4DB6AC,
    0xFFFFF176
  ];
  final List<FontSize> fontSizes = [
    FontSize(name: 'small', size: 12),
    FontSize(name: 'medium', size: 16),
    FontSize(name: 'large', size: 20),
    FontSize(name: 'extra-large', size: 24)
  ];

  //might be error
  SPSettings settings = SPSettings();

  @override
  void initState() {
    settings.init().then((value) {
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
    void setColor(int color, int secondaryColor) {
      setState(() {
        settingColor = color;
        settings.setColor(color);
        settingSecondaryColor = secondaryColor;
        settings.setSecondaryColor(secondaryColor);
      });
    }

    List<DropdownMenuItem<String>> getDropDownMenuItems() {
      List<DropdownMenuItem<String>> items = [];
      for (FontSize f in fontSizes) {
        items.add(
            DropdownMenuItem(value: f.size.toString(), child: Text(f.name!)));
      }
      return items;
    }

    void changeSize(String? newSize) {
      settings.setFontSize(double.parse(newSize ?? '14'));
      setState(() {
        fontSize = double.parse(newSize ?? '14');
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        backgroundColor: Color(settingColor),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Choose a Font Size for the App',
            style: TextStyle(fontSize: fontSize, color: Color(settingColor)),
          ),
          DropdownButton(
              value: fontSize.toString(),
              items: getDropDownMenuItems(),
              onChanged: changeSize),
          Text('App Main Color',
              style: TextStyle(fontSize: fontSize, color: Color(settingColor))),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (() => setColor(colors[0],secondaryColors[0])),
                child: ColorSquare(colorCode: colors[0]),
              ),
              GestureDetector(
                onTap: (() => setColor(colors[1],secondaryColors[1])),
                child: ColorSquare(colorCode: colors[1]),
              ),
              GestureDetector(
                onTap: (() => setColor(colors[2],secondaryColors[2])),
                child: ColorSquare(colorCode: colors[2]),
              ),
              GestureDetector(
                onTap: (() => setColor(colors[3],secondaryColors[3])),
                child: ColorSquare(colorCode: colors[3]),
              ),
              GestureDetector(
                onTap: (() => setColor(colors[4],secondaryColors[4])),
                child: ColorSquare(colorCode: colors[4]),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ColorSquare extends StatelessWidget {
  final int colorCode;
  const ColorSquare({Key? key, required this.colorCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Color(colorCode)),
    );
  }
}
