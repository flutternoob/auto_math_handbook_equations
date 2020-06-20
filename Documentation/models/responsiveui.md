# Auto Math Handbook Equations (App Documentation)

## responsiveui.dart

#### Imports:
```Java
import 'package:flutter/material.dart';
```

#### Create the enum for device type:
```Java
enum DeviceType { PC, MOBILE, TABLET, WEARABLE, UNKNOWN }
```

#### Create a class for device sizing and platform brightness information. 
```Java
class DeviceInformation {
  final Orientation orientation;
  final DeviceType deviceType;
  final Size screenSize;
  final Size localWidgetSize;
  final Brightness platformBrightness;

  DeviceInformation(
      {this.orientation, this.deviceType, this.screenSize, this.localWidgetSize, this.platformBrightness});
}
```

#### Create a base Stateless Widget. This Widget has a builder function (needed for getting the Scaffold's context - for MediaQueryData). This should be a required parameter in this widget. Create a SizingInformation object in the build method of this base widget and return a builder widget. To use this widget, wrap the child widget in it.

#### To get the Layout Widget Size, wrap the builder function in a LayoutBuilder Widget with a BuildContext and BoxConstraints as parameters. Create the SizingInformation object in the LayoutBuilder Widget's builder function. In this object pass the Size function (for the current Widget's size). Platform Brightness information can be used to determine the Brightness Mode of the app, which can be used as a basis for the app's default theme (not implemented in this app).

```Java
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
``` 

#### The getDeviceType function is used to get device sizing and device type information. It has two main functions - landscapeModeFunction() and portraitMode() function. Using deviceWidth and deviceHeight, the type of device is determined based on pixel thresholds. The getDeviceType function returns the DeviceType after determining the same.
```Java
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
```

#### Complete code for the responsive UI
```Java
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
```

#### References for this code:
1) [The Best Flutter Responsive UI Pattern](https://medium.com/flutter-community/the-best-flutter-responsive-ui-pattern-ba52875d70cd)  
2) [Material Design - Device Metrics](https://material.io/resources/devices/)  
3) [RESPONSIVE WEB DESIGN CHECKER](https://www.responsivedesignchecker.com/)  
4) [Popular Screen Resolutions: Designing for All](https://mediag.com/blog/popular-screen-resolutions-designing-for-all/)  