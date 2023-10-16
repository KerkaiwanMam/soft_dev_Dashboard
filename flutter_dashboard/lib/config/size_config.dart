import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData; // Use 'late' to indicate it will be initialized
  static double _screenWidth = 0.0;
  static double _screenHeight = 0.0;
  static double _blockSizeHorizontal = 0.0;
  static double _blockSizeVertical = 0.0;

  SizeConfig(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    _blockSizeHorizontal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;
  }

  static double get screenWidth => _screenWidth;
  static double get screenHeight => _screenHeight;
  static double get blockSizeHorizontal => _blockSizeHorizontal;
  static double get blockSizeVertical => _blockSizeVertical;
}
