import 'package:shared_preferences/shared_preferences.dart';

class SPSettings {
  final String fontSizeKey = 'font_size';
  final String colorKey = 'color';
  final String secondaryColorKey = 'secondary_color';
  static late SharedPreferences _sp;
  static SPSettings? _instance;

  SPSettings._internal(); //constructor private to the class
  //SPSettings._somename works the same

  //We use the factory keyword to implement constructors that do not produce new instances of an existing class.
  factory SPSettings() {
    _instance ??= SPSettings._internal();
    return _instance as SPSettings;
  }

  Future init() async {
    _sp = await SharedPreferences.getInstance();
  }

  Future setColor(int color) async {
    return _sp.setInt(colorKey, color);
  }

  int getColor() {
    int? color = _sp.getInt(colorKey);
    return color ?? 0xff039BE5;
  }

  Future setSecondaryColor(int color) async {
    return _sp.setInt(secondaryColorKey, color);
  }

  int getSecondaryColor() {
    int? color = _sp.getInt(secondaryColorKey);
    return color ?? 0xff4FC3F7;
  }

  Future setFontSize(double fontSize) async {
    return _sp.setDouble(fontSizeKey, fontSize);
  }

  double getFontSize() {
    double? fontSize = _sp.getDouble(fontSizeKey);
    return fontSize ?? 16;
  }
}
