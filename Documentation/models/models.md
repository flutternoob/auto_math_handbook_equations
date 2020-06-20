# Auto Math Handbook Equations (App Documentation)

## Models.dart

#### Imports:
```Java
import 'package:flutter/material.dart';
import '../commoncode.dart';
import '../AutoMathHandbookEquationsLibrary/EquationsLibrary.dart';
```

#### The class models in this file are:
1. Equations List Model: This model is used to create a list of equations and is used to pass the references to the equations (in their raw String format) to a Custom Equations Widget
```Java
class EquationListModel {
  final String equationListName;
  final Widget navigatorWidgetName;

  EquationListModel({this.equationListName, this.navigatorWidgetName});
}
```

2. Main Menu Model: This model is used to create a list of items for separate drawer menus, one for Mobile/Tablet and one for PC
```Java
class MainMenu {
  String menuTitle;
  IconData iconData;

  MainMenu({this.menuTitle, this.iconData});
}
```

The complete code for the "models.dart" file is as follows:

```Java
import 'package:flutter/material.dart';
import '../commoncode.dart';
import '../AutoMathHandbookEquationsLibrary/EquationsLibrary.dart';

///This model is used to display the Equations
class EquationListModel {
  final String chapterNumber;
  final String chapterHeading;
  final Widget navigatorWidgetName;

  EquationListModel({this.chapterNumber, this.chapterHeading, this.navigatorWidgetName});
}

///This is the list based off the EquationListModel and is used to pass references of the equations to the CustomEquationsWidget
final List<EquationListModel> equationListModel = [
  EquationListModel(
    chapterNumber: "Chapter 1",
    chapterHeading: "Displacement, Bore and Stroke",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 1: Displacement, Bore and Stroke",
      rawEquationString: chapter01TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 2",
    chapterHeading: "Compression Ratio",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 2: Compression Ratio",
      rawEquationString: chapter02TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 3",
    chapterHeading: "Piston Speed",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 3: Piston Speed",
      rawEquationString: chapter03TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 4",
    chapterHeading: "Brake Horsepower and Torque",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 4: Brake Horsepower and Torque",
      rawEquationString: chapter04TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 5",
    chapterHeading: "Indicated Horsepower and Torque",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 5: Indicated Horsepower and Torque",
      rawEquationString: chapter05TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 6",
    chapterHeading: "Air Capacity and Volumetric Efficiency",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 6: Air Capacity and Volumetric Efficiency",
      rawEquationString: chapter06TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 7",
    chapterHeading: "Weight Distribution",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 7: Weight Distribution",
      rawEquationString: chapter07TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 8",
    chapterHeading: "Center of Gravity",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 8: Center of Gravity",
      rawEquationString: chapter08TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 9",
    chapterHeading: "g-Force and Weight Transfer",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 9: g-Force and Weight Transfer",
      rawEquationString: chapter09TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 10",
    chapterHeading: "Moment of Inertia",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 10: Moment of Inertia",
      rawEquationString: chapter10TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 11",
    chapterHeading: "Aerodynamics",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 11: Aerodynamics",
      rawEquationString: chapter11TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 13",
    chapterHeading: "Shift Points",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 13: Shift Points",
      rawEquationString: chapter13TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 14",
    chapterHeading: "Quarter-Mile E.T. and MPH",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 14: Quarter-Mile E.T. and MPH",
      rawEquationString: chapter14TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 16",
    chapterHeading: "Instrument Error and Calibration",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 16: Instrument Error and Calibration",
      rawEquationString: chapter16TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 17",
    chapterHeading: "MPH, RPM, Gears and Tires",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 17: MPH, RPM, Gears and Tires",
      rawEquationString: chapter17TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 18",
    chapterHeading: "Tire Sizes and their Effects",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 18: Tire Sizes and their Effects",
      rawEquationString: chapter18TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 19",
    chapterHeading: "Average MPH and MPG",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 19: Average MPH and MPG",
      rawEquationString: chapter19TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 20",
    chapterHeading: "Fuel Economy and Cost of Ownership",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 20: Fuel Economy and Cost of Ownership",
      rawEquationString: chapter20TeX,
    ),
  ),
  EquationListModel(
    chapterNumber: "Chapter 21",
    chapterHeading: "Crankshaft Balancing",
    navigatorWidgetName: CustomEquationsWidget(
      pageTitle: "Chapter 21: Crankshaft Balancing",
      rawEquationString: chapter21TeX,
    ),
  ),
];

///Model for the Main (Drawer) Menu
class MainMenu {
  String menuTitle;
  IconData iconData;

  MainMenu({this.menuTitle, this.iconData});
}

///List of Main Menu items based off the Main (Drawer) Menu Model - Mobile and Tablet
final List<MainMenu> mainMenuMobileAndTablet = [
  MainMenu(
    menuTitle: "Home",
    iconData: Icons.home,
  ),
  MainMenu(
    menuTitle: "Help",
    iconData: Icons.help_outline,
  ),
  MainMenu(
    menuTitle: "About",
    iconData: Icons.info_outline,
  ),
  MainMenu(
    menuTitle: "Share",
    iconData: Icons.share,
  ),
  MainMenu(
    menuTitle: "Permissions",
    iconData: Icons.perm_device_information,
  ),
  MainMenu(
    menuTitle: "Contact",
    iconData: Icons.email,
  ),
  MainMenu(
    menuTitle: "Exit",
    iconData: Icons.exit_to_app,
  ),
];

///List of Main Menu items based off the Main (Drawer) Menu Model - PC
final List<MainMenu> mainMenuPC = [
  MainMenu(
    menuTitle: "Home",
    iconData: Icons.home,
  ),
  MainMenu(
    menuTitle: "About",
    iconData: Icons.info_outline,
  ),
  MainMenu(
    menuTitle: "Help",
    iconData: Icons.help_outline,
  ),
  MainMenu(
    menuTitle: "Contact",
    iconData: Icons.email,
  ),
];
```