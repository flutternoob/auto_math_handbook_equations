import 'package:flutter/material.dart';

enum DeviceType { PC, MOBILE, TABLET, WEARABLE, UNKNOWN }

class SizingInformation {
  final Orientation orientation;
  final DeviceType deviceType;
  final Size screenSize;
  final Size localWidgetSize;
  final Brightness platformBrightness;

  SizingInformation({this.orientation, this.deviceType, this.screenSize, this.localWidgetSize, this.platformBrightness});
}

class DeviceInfoWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;

  const DeviceInfoWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxConstraints) {
      SizingInformation sizingInformation = SizingInformation(
          orientation: mediaQueryData.orientation,
          deviceType: getDeviceType(mediaQueryData),
          screenSize: mediaQueryData.size,
          platformBrightness: mediaQueryData.platformBrightness,
          localWidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight));
      return builder(context, sizingInformation);
    });
  }
}

DeviceType getDeviceType(MediaQueryData mediaQueryData) {
  Orientation orientation = mediaQueryData.orientation;

  ///Creating conditional bool variables
  bool landscapeMode = orientation == Orientation.landscape;
  bool portraitMode = orientation == Orientation.portrait;

  ///Retrieve device width and height
  double deviceWidth = mediaQueryData.size.width;
  double deviceHeight = mediaQueryData.size.height;

  DeviceType deviceType;

  ///Using deviceWidth and deviceHeight, determine the type of device (based on pixel thresholds) - LandscapeMode function
  DeviceType landscapeModeFunction() {
    if (deviceWidth > deviceHeight && deviceWidth >= 1024)
      return deviceType = DeviceType.PC;
    else if (deviceWidth > deviceHeight && deviceHeight >= 415 && deviceHeight < 768)
      return deviceType = DeviceType.TABLET;
    else if (deviceWidth > deviceHeight && deviceHeight < 415)
      return deviceType = DeviceType.MOBILE;
    else if (deviceWidth > deviceHeight && deviceHeight < 320)
      return deviceType = DeviceType.WEARABLE;
    else
      return deviceType = DeviceType.UNKNOWN;
  }

  ///Using deviceWidth and deviceHeight, determine the type of device (based on pixel thresholds) - portraitMode function
  DeviceType portraitModeFunction() {
    if (deviceWidth < deviceHeight && deviceHeight >= 1024)
      return deviceType = DeviceType.PC;
    else if (deviceWidth < deviceHeight && deviceWidth >= 415)
      return deviceType = DeviceType.TABLET;
    else if (deviceWidth < deviceHeight && deviceWidth < 415 && deviceWidth > 320)
      return deviceType = DeviceType.MOBILE;
    else if (deviceWidth < deviceHeight && deviceWidth <= 320)
      return deviceType = DeviceType.WEARABLE;
    else if (deviceWidth == deviceHeight && deviceWidth <= 320)
      return deviceType = DeviceType.WEARABLE;
    else
      return deviceType = DeviceType.UNKNOWN;
  }

  ///Function call if landscapeMode
  if (landscapeMode == true) landscapeModeFunction();

  ///Function call if portraitMode
  if (portraitMode == true) portraitModeFunction();

  return deviceType;
}