import 'package:flutter/material.dart';

class ScreenUtil {
  ScreenUtil({
    this.width = 1080,
    this.height = 1920,
    this.allowFontScaling = false,
  });
  static ScreenUtil instance = ScreenUtil();

  double width;
  double height;
  bool allowFontScaling;

  late MediaQueryData _mediaQueryData;
  late double _screenWidth;
  late double _screenHeight;
  late double _pixelRatio;
  late double _statusBarHeight;

  late double _bottomBarHeight;

  late double _textScaleFactor;

  static ScreenUtil getInstance() {
    return instance;
  }

  void init(BuildContext context) {
    final MediaQueryData mediaQuery = MediaQuery.of(context);
    _mediaQueryData = mediaQuery;
    _pixelRatio = mediaQuery.devicePixelRatio;
    _screenWidth = mediaQuery.size.width;
    _screenHeight = mediaQuery.size.height;
    _statusBarHeight = mediaQuery.padding.top;
    _bottomBarHeight = _mediaQueryData.padding.bottom;
    _textScaleFactor = mediaQuery.textScaleFactor;
  }

  MediaQueryData get mediaQueryData => _mediaQueryData;

  double get textScaleFactory => _textScaleFactor;

  double get pixelRatio => _pixelRatio;

  double get screenWidthDp => _screenWidth;

  double get screenHeightDp => _screenHeight;

  double get screenWidth => _screenWidth * _pixelRatio;

  double get screenHeight => _screenHeight * _pixelRatio;

  double get statusBarHeight => _statusBarHeight;

  double get bottomBarHeight => _bottomBarHeight;

  double get scaleWidth => _screenWidth / instance.width;

  double get scaleHeight => _screenHeight / instance.height;

  double setWidth(double width) => width * scaleWidth;

  double setHeight(double height) => height * scaleHeight;

  dynamic setSp(double fontSize) => allowFontScaling
      ? setWidth(fontSize)
      : setWidth(fontSize) / _textScaleFactor;
}
