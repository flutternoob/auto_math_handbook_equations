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