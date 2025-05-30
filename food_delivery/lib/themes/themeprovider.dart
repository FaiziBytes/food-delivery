// ignore_for_file: unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:food_delivery/themes/darkmode.dart';
import 'package:food_delivery/themes/lightmode.dart';


class Themeprovider with ChangeNotifier{
    ThemeData _themeData = lightMode;

    ThemeData get themeData => _themeData;
    bool get isDarkMode => _themeData == darkMode;
    set themeData(ThemeData themeData) {
      _themeData = themeData;
      notifyListeners();
    }

    void toggleTheme(){
        if(_themeData == lightMode){
            _themeData = darkMode;
        }else{
            _themeData = lightMode;
        }
        notifyListeners();
    }
}