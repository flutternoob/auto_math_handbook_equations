# Auto Math Handbook Equations (App Documentation)

## commoncode.dart

#### Imports:
```Java
import 'models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:share/share.dart';
import 'models/responsiveui.dart';
import 'main.dart';
```

#### The AppServices Mixin is a custom mixin that can be used to set the SystemChrome settings and control the device GUI buttons depending on use case for a given app. For best results, the methods pertaining to the SystemChrome.setSystemUIOverlayStyle constructor should be used in the root Widget (in this case the MyApp() Widget). The methods pertaining to the SystemChrome.setPreferredOrientations can be used any where in the app depending on the required orientation for the app (for a given screen).
```Java
mixin AppServicesMixin {
  equationsPageOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  allOtherPagesOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  systemChromeSettings() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF000000),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF000000),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }
}
```

#### The following widget, the AllPagesWidget, serves as a template for all the screens used in the App. Since the Navigator.pushReplacement constructor is used instead of the Navigator.push constructor, the Scaffold Widget is wrapped in a WillPopScope Widget with Future.value constructor being passed a bool of 'false'. This has been done to prevent the app from exiting when an attempt is made to replace the current screen in the system stack with the new screen. This was done to prevent many screens from being added in the stack, rather, the current screen is simply replaced with the new screen. For this reason, it has also been recommended that the app's menu be used for navigation rather than using the device's back button. This feature will have to be removed if implemented for iOS, since Apple does not allow such a method of app interaction. The code for the AllPagesWidget is as follows:
```Java
class AllPagesWidget extends StatelessWidget with AppServicesMixin {
  final String pageTitle;
  final Widget pageWidget;
  final double textSize;

  AllPagesWidget({@required this.pageTitle, @required this.pageWidget, this.textSize});

  @override
  Widget build(BuildContext context) {
    systemChromeSettings();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Math Handbook Equations',
      home: SafeArea(
        child: WillPopScope(
          onWillPop: () => Future.value(false),
          child: Scaffold(
            drawer: MainMenuSelectorWidget(),
            body: Builder(
              builder: (BuildContext context) {
                return Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("images/appbarimage.jpg"), fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                pageTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: textSize),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.95,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: Padding(padding: const EdgeInsets.all(40.0), child: pageWidget),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(Icons.menu, color: Colors.white),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
```

#### The CustomEquationsWidget extends the StatelessWidget with the AppServices mixin. The preferred orientation for all the equations is in the landscape mode. Some equations are too large to be rendered properly in the portrait mode and so, for this reason, the preferred display mode is set to landscape mode. The equations are displayed as TeXViewDocument Widgets which render each raw equations string as a TeX document. These TeXViewDocument Widgets are wrapped in the TeXView Widget, which is in turn wrapped in the AllPagesWidget. A decision is taken within the DeviceInfoWidget for the app's title text size settings based on the device type. The DeviceInfoWidget is further wrapped in a Builder widget to provide a Build Context for the DeviceInfoWidget. The code for the CustomEquationsWidget is as follows:
```Java
class CustomEquationsWidget extends StatelessWidget with AppServicesMixin {
  final String rawEquationString;
  final String pageTitle;

  CustomEquationsWidget({this.pageTitle, this.rawEquationString});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        //equationsPageOrientation();
        return DeviceInfoWidget(
          builder: (context, sizingInformation) {
            equationsPageOrientation();
            if (sizingInformation.deviceType == DeviceType.MOBILE)
              return AllPagesWidget(
                pageTitle: pageTitle,
                pageWidget: TeXView(
                    renderingEngine: TeXViewRenderingEngine.mathjax(), child: TeXViewDocument(rawEquationString)),
                textSize: 20,
              );
            if (sizingInformation.screenSize.width < 900)
              return AllPagesWidget(
                pageTitle: pageTitle,
                pageWidget: TeXView(
                    style: TeXViewStyle(backgroundColor: Colors.white, fontStyle: TeXViewFontStyle(fontSize: 20)),
                    renderingEngine: TeXViewRenderingEngine.mathjax(),
                    child: TeXViewDocument(rawEquationString)),
                textSize: 20,
              );
            return AllPagesWidget(
              pageTitle: pageTitle,
              pageWidget: TeXView(
                  style: TeXViewStyle(backgroundColor: Colors.white, fontStyle: TeXViewFontStyle(fontSize: 20)),
                  renderingEngine: TeXViewRenderingEngine.mathjax(),
                  child: TeXViewDocument(rawEquationString)),
              textSize: 30,
            );
          },
        );
      },
    );
  }
}
```

#### Different menus are displayed for different device types. This is because, some features such as the "Share" feature and the "Exit" feature will not work for the web version of the app. Each menu item, when tapped calls the mainMenuAccessFunction() which takes a MainMenu item and a BuildContext as parameters.

#### The code for the MainMenuSelector Widget is as follows:
```Java
class MainMenuSelectorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DeviceInfoWidget(builder: (context, sizingInformation) {
        if (sizingInformation.deviceType == DeviceType.MOBILE || sizingInformation.deviceType == DeviceType.TABLET)
          return MainMenuMobileAndTablet();
        if (sizingInformation.screenSize.width < 900)
          return MainMenuPC();
        return MainMenuPC();
      });
    });
  }
}
```

#### The code for the main menu for mobiles and tablets is as follows:
```Java
class MainMenuMobileAndTablet extends StatefulWidget {
  @override
  _MainMenuMobileAndTabletState createState() => _MainMenuMobileAndTabletState();
}

class _MainMenuMobileAndTabletState extends State<MainMenuMobileAndTablet> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 220,
        height: 400,
        child: Opacity(
          opacity: 0.7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: new Offset(7.0, 7.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: mainMenuMobileAndTablet
                  .map((mainMenuItem) => Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white30,
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              mainMenuItem.menuTitle,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(mainMenuItem.iconData, color: Colors.white),
                            onTap: () => mainMenuAccessFunction(mainMenuItem, context),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
```

#### The code for the main menu for the PC is as follows:
```Java
class MainMenuPC extends StatefulWidget {
  @override
  _MainMenuPCState createState() => _MainMenuPCState();
}

class _MainMenuPCState extends State<MainMenuPC> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 220,
        height: 230,
        child: Opacity(
          opacity: 0.7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: new Offset(7.0, 7.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: mainMenuPC
                  .map((mainMenuItem) => Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white30,
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              mainMenuItem.menuTitle,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(mainMenuItem.iconData, color: Colors.white),
                            onTap: () => mainMenuAccessFunction(mainMenuItem, context),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
```

#### The mainMenuAccessFunction is used to determine which helper function has to be called depending on which MainMenu item is tapped. The appExitFunction() should not be implemented for iOS devices, since it is against Apple's policies for their app store. The code for the mainMenuAccessFunction is as follows:
```Java
void mainMenuAccessFunction(MainMenu mainMenuItem, BuildContext context) {
  if (mainMenuItem.menuTitle == "Home") {
    Navigator.pop(context);
    goToHomePageFunction(context);
  }
  if (mainMenuItem.menuTitle == "Help") {
    dialogAccessFunction("Help", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "About") {
    dialogAccessFunction("About", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Share") {
    shareFunction(context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Permissions") {
    dialogAccessFunction("Permissions", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Contact") {
    dialogAccessFunction("Contact", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Exit") {
    appExitFunction();
  }
}
```

#### The dialogFunction is called to determine what has to be displayed in the AlertDialog. It takes a dialogIdentifier (which is a String) and a BuildContext as arguments. The dialogIdentifier is simply the title of a given MainMenu item. Depending on the main menu item, a decision is taken as to what should be displayed in the AlertDialog Widget when the showDialog function is called. The code for the dialogFunction() is as follows:
```Java
void dialogFunction(String dialogIdentifier, BuildContext context) {
  String alertDialogTitle;
  String alertDialogContent;

  if (dialogIdentifier == "Help") {
    alertDialogTitle = "Help";
    alertDialogContent =
        "For better user experience, the device's back button cannot be used for navigation within the app. Please use the app's menu for navigation.";
  }
  if (dialogIdentifier == "About") {
    alertDialogTitle = "About";
    alertDialogContent =
        "This app contains equations from the book 'Auto Math Handbook' by John Lawlor and Bill Hancock.";
  }
  if (dialogIdentifier == "Contact") {
    alertDialogTitle = "Contact";
    alertDialogContent = "something@something.com";
  }
  if (dialogIdentifier == "Permissions") {
    alertDialogTitle = "Permissions";
    alertDialogContent = "This app does not require any special permissions.";
  }
  showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialogWidget(
            alertDialogTitle: alertDialogTitle,
            alertDialogContent: alertDialogContent,
          ),
      barrierDismissible: true);
}
```

#### The AlertDialog Widget takes the alertDialogTitle and alertDialogContent from the dialogFunction() as parameters in its default constructor. If the alertDialogTitle is "Contact", a SelectableText Widget is used to allow the user to copy the contact information and paste it in their email client of choice to contact the app developer (or to be taken to the app's relevant store page to contact the developer). The code for the AlertDialog Widget is as follows:
```Java
class AlertDialogWidget extends StatefulWidget {
  final String alertDialogTitle;
  final String alertDialogContent;

  AlertDialogWidget({this.alertDialogTitle, this.alertDialogContent});

  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(widget.alertDialogTitle),
      content: widget.alertDialogTitle == "Contact"
          ? SelectableText(widget.alertDialogContent, style: TextStyle(color: Colors.blue))
          : Container(
              width: 275,
              child: Text(
                widget.alertDialogContent,
                textAlign: TextAlign.justify,
              ),
            ),
      actions: [
        MaterialButton(color: Colors.black, elevation: 10, onPressed: () => Navigator.pop(context), child: Text('OK'))
      ],
    );
  }
}
```

#### The code for the helper functions used by the MainMenu items is as follows:
```Java
///Go to Home Page
void goToHomePageFunction(BuildContext context) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AutoMathHandbookEquations()));
}

///Open Share Dialog
void shareFunction(BuildContext context) {
  final RenderBox box = context.findRenderObject();
  Share.share("Check out this app from the store!\nPlayStoreLinkToTheAppComesHere.com",
      subject: "Automotive Equations", sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}

///Open Help Dialog
void dialogAccessFunction(String dialogIdentifier, BuildContext context) {
  dialogFunction(dialogIdentifier, context);
}

///App Exit Function
void appExitFunction() {
  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
}
```

#### The full code for the commoncode.dart file is as follows:
```Java
import 'models/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:share/share.dart';
import 'models/responsiveui.dart';
import 'main.dart';

///App Services mixin
mixin AppServicesMixin {
  equationsPageOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  allOtherPagesOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }

  systemChromeSettings() {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Color(0xFF000000),
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Color(0xFF000000),
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
  }
}

///End of App Services mixin

///All Pages Widget - This is the Widget for building out the app's layout
class AllPagesWidget extends StatelessWidget with AppServicesMixin {
  final String pageTitle;
  final Widget pageWidget;
  final double textSize;

  AllPagesWidget({@required this.pageTitle, @required this.pageWidget, this.textSize});

  @override
  Widget build(BuildContext context) {
    systemChromeSettings();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto Math Handbook Equations',
      home: SafeArea(
        child: WillPopScope(
          onWillPop: () => Future.value(false),
          child: Scaffold(
            drawer: MainMenuSelectorWidget(),
            body: Builder(
              builder: (BuildContext context) {
                return Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("images/appbarimage.jpg"), fit: BoxFit.cover),
                      ),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                pageTitle,
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: textSize),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 5,
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.95,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                ),
                              ),
                              child: Padding(padding: const EdgeInsets.all(40.0), child: pageWidget),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                          icon: Icon(Icons.menu, color: Colors.white),
                          onPressed: () => Scaffold.of(context).openDrawer(),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

///End of All Pages Widget

///Custom Equations Widget
class CustomEquationsWidget extends StatelessWidget with AppServicesMixin {
  final String rawEquationString;
  final String pageTitle;

  CustomEquationsWidget({this.pageTitle, this.rawEquationString});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        //equationsPageOrientation();
        return DeviceInfoWidget(
          builder: (context, sizingInformation) {
            equationsPageOrientation();
            if (sizingInformation.deviceType == DeviceType.MOBILE)
              return AllPagesWidget(
                pageTitle: pageTitle,
                pageWidget: TeXView(
                    renderingEngine: TeXViewRenderingEngine.mathjax(), child: TeXViewDocument(rawEquationString)),
                textSize: 20,
              );
            if (sizingInformation.screenSize.width < 900)
              return AllPagesWidget(
                pageTitle: pageTitle,
                pageWidget: TeXView(
                    style: TeXViewStyle(backgroundColor: Colors.white, fontStyle: TeXViewFontStyle(fontSize: 20)),
                    renderingEngine: TeXViewRenderingEngine.mathjax(),
                    child: TeXViewDocument(rawEquationString)),
                textSize: 20,
              );
            return AllPagesWidget(
              pageTitle: pageTitle,
              pageWidget: TeXView(
                  style: TeXViewStyle(backgroundColor: Colors.white, fontStyle: TeXViewFontStyle(fontSize: 20)),
                  renderingEngine: TeXViewRenderingEngine.mathjax(),
                  child: TeXViewDocument(rawEquationString)),
              textSize: 30,
            );
          },
        );
      },
    );
  }
}

///End of Custom Equations Widget

///Widget to determine the Main Menu based on DeviceType
class MainMenuSelectorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return DeviceInfoWidget(builder: (context, sizingInformation) {
        if (sizingInformation.deviceType == DeviceType.MOBILE || sizingInformation.deviceType == DeviceType.TABLET)
          return MainMenuMobileAndTablet();
        return MainMenuPC();
      });
    });
  }
}

///End of widget to determine the Main Menu based on DeviceType

///Main Menu for DeviceType.MOBILE and DeviceType.TABLET
class MainMenuMobileAndTablet extends StatefulWidget {
  @override
  _MainMenuMobileAndTabletState createState() => _MainMenuMobileAndTabletState();
}

class _MainMenuMobileAndTabletState extends State<MainMenuMobileAndTablet> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 220,
        height: 400,
        child: Opacity(
          opacity: 0.7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: new Offset(7.0, 7.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: mainMenuMobileAndTablet
                  .map((mainMenuItem) => Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white30,
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              mainMenuItem.menuTitle,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(mainMenuItem.iconData, color: Colors.white),
                            onTap: () => mainMenuAccessFunction(mainMenuItem, context),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

///End of Main Menu for DeviceType.MOBILE and DeviceType.TABLET

///Main Menu for DeviceType.PC
class MainMenuPC extends StatefulWidget {
  @override
  _MainMenuPCState createState() => _MainMenuPCState();
}

class _MainMenuPCState extends State<MainMenuPC> {
  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 220,
        height: 230,
        child: Opacity(
          opacity: 0.7,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: new Offset(7.0, 7.0),
                  blurRadius: 5.0,
                )
              ],
            ),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: mainMenuPC
                  .map((mainMenuItem) => Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: Colors.white30,
                          onTap: () {},
                          child: ListTile(
                            title: Text(
                              mainMenuItem.menuTitle,
                              style: TextStyle(color: Colors.white),
                            ),
                            trailing: Icon(mainMenuItem.iconData, color: Colors.white),
                            onTap: () => mainMenuAccessFunction(mainMenuItem, context),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}

///End of Main Menu for DeviceType.PC

///Method to access the different menu functions, depending on the mainMenuItem
void mainMenuAccessFunction(MainMenu mainMenuItem, BuildContext context) {
  if (mainMenuItem.menuTitle == "Home") {
    Navigator.pop(context);
    goToHomePageFunction(context);
  }
  if (mainMenuItem.menuTitle == "Help") {
    dialogAccessFunction("Help", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "About") {
    dialogAccessFunction("About", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Share") {
    shareFunction(context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Permissions") {
    dialogAccessFunction("Permissions", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Contact") {
    dialogAccessFunction("Contact", context);
    Navigator.pop(context);
  }
  if (mainMenuItem.menuTitle == "Exit") {
    appExitFunction();
  }
}
///End of Method to access the different menu functions

///Function to open the Dialog
void dialogFunction(String dialogIdentifier, BuildContext context) {
  String alertDialogTitle;
  String alertDialogContent;

  if (dialogIdentifier == "Help") {
    alertDialogTitle = "Help";
    alertDialogContent =
        "For better user experience, the device's back button cannot be used for navigation within the app. Please use the app's menu for navigation.";
  }
  if (dialogIdentifier == "About") {
    alertDialogTitle = "About";
    alertDialogContent =
        "This app contains equations from the book 'Auto Math Handbook' by John Lawlor and Bill Hancock.";
  }
  if (dialogIdentifier == "Contact") {
    alertDialogTitle = "Contact";
    alertDialogContent = "something@something.com";
  }
  if (dialogIdentifier == "Permissions") {
    alertDialogTitle = "Permissions";
    alertDialogContent = "This app does not require any special permissions.";
  }
  showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialogWidget(
            alertDialogTitle: alertDialogTitle,
            alertDialogContent: alertDialogContent,
          ),
      barrierDismissible: true);
}

///End of Function to open the AlertDialog Widget

///Custom AlertDialog Widget
class AlertDialogWidget extends StatefulWidget {
  final String alertDialogTitle;
  final String alertDialogContent;

  AlertDialogWidget({this.alertDialogTitle, this.alertDialogContent});

  @override
  _AlertDialogWidgetState createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(widget.alertDialogTitle),
      content: widget.alertDialogTitle == "Contact"
          ? SelectableText(widget.alertDialogContent, style: TextStyle(color: Colors.blue))
          : Container(
              width: 275,
              child: Text(
                widget.alertDialogContent,
                textAlign: TextAlign.justify,
              ),
            ),
      actions: [
        MaterialButton(color: Colors.black, elevation: 10, onPressed: () => Navigator.pop(context), child: Text('OK'))
      ],
    );
  }
}

///End of custom AlertDialog Widget

///Go to Home Page
void goToHomePageFunction(BuildContext context) {
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AutoMathHandbookEquations()));
}

///Open Share Dialog
void shareFunction(BuildContext context) {
  final RenderBox box = context.findRenderObject();
  Share.share("Check out this app from the store!\nPlayStoreLinkToTheAppComesHere.com",
      subject: "Automotive Equations", sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
}

///Open Help Dialog
void dialogAccessFunction(String dialogIdentifier, BuildContext context) {
  dialogFunction(dialogIdentifier, context);
}

///App Exit Function
void appExitFunction() {
  SystemChannels.platform.invokeMethod('SystemNavigator.pop');
}
```