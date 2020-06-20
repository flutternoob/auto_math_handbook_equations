# Auto Math Handbook Equations (App Documentation)

## main.dart

#### Imports:
```Java
import 'package:flutter/material.dart';
import 'commoncode.dart';
import 'models/models.dart';
import 'models/responsiveui.dart';
```

#### The root widget of the app is the AutoMathHandbookEquations Widget which extends a Stateless widget with the AppServices mixin. Since it is the root widget, it returns a MaterialApp widget (rather than a Builder widget) to provide a BuildContext to the DeviceInfoWidget. Depending on the device type, a decision is taken to display the list of equations either in a ListView or a GridView Widget.

#### The code for the AutoMathHandbookEquations Widget is as follows:
```Java
class AutoMathHandbookEquations extends StatelessWidget with AppServicesMixin {
  final DeviceType deviceType;

  AutoMathHandbookEquations({this.deviceType});

  @override
  Widget build(BuildContext context) {
    allOtherPagesOrientation();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceInfoWidget(builder: (context, sizingInformation) {
        if (sizingInformation.deviceType == DeviceType.MOBILE)
          return AllPagesWidget(
            pageTitle: 'Auto Math Handbook\nEquations',
            pageWidget: EquationsListMobile(),
            textSize: 20,
          );
        if (sizingInformation.screenSize.width < 900)
          return AllPagesWidget(
            pageTitle: 'Auto Math Handbook Equations',
            pageWidget: EquationsListTabletAndPC(),
            textSize: 20,
          );
        return AllPagesWidget(
          pageTitle: 'Auto Math Handbook Equations',
          pageWidget: EquationsListTabletAndPC(),
          textSize: 30,
        );
      }),
    );
  }
}
```

#### If the device is a Tablet or a PC, the EquationsListTabletAndPC Widget is used to display the list of equations (their titles) as a GridView (using the GridView.count constructor). Depending the on the screen size, a decision is taken to set the crossAxisCount, crossAxisSpacing and the mainAxisSpacing properties. The code for the EquationsListTabletAndPC Widget is as follows:
```Java
class EquationsListTabletAndPC extends StatelessWidget {
  int crossAxisCount;
  double mainAxisSpacing;
  double crossAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return DeviceInfoWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.screenSize.width < 900) {
          mainAxisSpacing = 25;
          crossAxisSpacing = 25;
          crossAxisCount = 2;
        } else {
          mainAxisSpacing = 25;
          crossAxisSpacing = 25;
          crossAxisCount = 8;
        }
        return Center(
          child: GridView.count(
            physics: BouncingScrollPhysics(),
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            children: equationListModel
                .map(
                  (equationListItem) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  color: Colors.blue[200],
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => equationListItem.navigatorWidgetName),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          equationListItem.chapterHeading,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        );
      },
    );
  }
}
```

#### If the device type is a mobile, the EquationsListMobile Widget is used to display the list of equations (their titles). The code for the EquationsListMobile Widget is as follows:
```Java
class EquationsListMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: equationListModel.length,
      itemBuilder: (context, index) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.blue[100],
            onTap: () {},
            child: ListTile(
              title: Text(equationListModel[index].chapterNumber),
              subtitle: Text(equationListModel[index].chapterHeading),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => equationListModel[index].navigatorWidgetName)),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 15.0,
          endIndent: 15.0,
        );
      },
    );
  }
}
```

#### The full code for the main.dart files is as follows:
```Java
import 'package:flutter/material.dart';
import 'commoncode.dart';
import 'models/models.dart';
import 'models/responsiveui.dart';

void main() {
  runApp(AutoMathHandbookEquations());
}

class AutoMathHandbookEquations extends StatelessWidget with AppServicesMixin {
  final DeviceType deviceType;

  AutoMathHandbookEquations({this.deviceType});

  @override
  Widget build(BuildContext context) {
    allOtherPagesOrientation();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DeviceInfoWidget(builder: (context, sizingInformation) {
        if (sizingInformation.deviceType == DeviceType.MOBILE)
          return AllPagesWidget(
            pageTitle: 'Auto Math Handbook\nEquations',
            pageWidget: EquationsListMobile(),
            textSize: 20,
          );
        if (sizingInformation.screenSize.width < 900)
          return AllPagesWidget(
            pageTitle: 'Auto Math Handbook Equations',
            pageWidget: EquationsListTabletAndPC(),
            textSize: 20,
          );
        return AllPagesWidget(
          pageTitle: 'Auto Math Handbook Equations',
          pageWidget: EquationsListTabletAndPC(),
          textSize: 30,
        );
      }),
    );
  }
}

// ignore: must_be_immutable
class EquationsListTabletAndPC extends StatelessWidget {
  int crossAxisCount;
  double mainAxisSpacing;
  double crossAxisSpacing;

  @override
  Widget build(BuildContext context) {
    return DeviceInfoWidget(
      builder: (context, sizingInformation) {
        if (sizingInformation.screenSize.width < 900) {
          mainAxisSpacing = 25;
          crossAxisSpacing = 25;
          crossAxisCount = 2;
        } else {
          mainAxisSpacing = 25;
          crossAxisSpacing = 25;
          crossAxisCount = 8;
        }
        return Center(
          child: GridView.count(
            physics: BouncingScrollPhysics(),
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: mainAxisSpacing,
            crossAxisSpacing: crossAxisSpacing,
            children: equationListModel
                .map(
                  (equationListItem) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))
                  ),
                  color: Colors.blue[200],
                  child: InkWell(
                    splashColor: Colors.white,
                    onTap: () => Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => equationListItem.navigatorWidgetName),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          equationListItem.chapterHeading,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
                .toList(),
          ),
        );
      },
    );
  }
}

class EquationsListMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: BouncingScrollPhysics(),
      itemCount: equationListModel.length,
      itemBuilder: (context, index) {
        return Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.blue[100],
            onTap: () {},
            child: ListTile(
              title: Text(equationListModel[index].chapterNumber),
              subtitle: Text(equationListModel[index].chapterHeading),
              onTap: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => equationListModel[index].navigatorWidgetName)),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          indent: 15.0,
          endIndent: 15.0,
        );
      },
    );
  }
}
```