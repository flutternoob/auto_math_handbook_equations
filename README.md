# Auto Math Handbook Equations (App Documentation)

## Description
#### This App contains a list of equations from the book "Auto Math Handbook" by John Lawlor and Bill Hancock. The App is responsive based on the Device Type such as a Mobile, Tablet and PC. 

## Project Setup
#### Steps carried out before writing the application code:

1. Update the "pubspec.yaml" file to include the following packages
 ```
 flutter_tex: ^3.6.7+4
  share: ^0.6.4+3
 ```
under the following section of the "pubspec.yaml" file
 ```
 dependencies:
  flutter:
    sdk: flutter
 ```
 and run pub get.

 Note: flutter_tex is a package used to render equations using either MathJaX or KateX rendering. Share is a package that allows information to be shared using contacts, email, text messaging and various other instant messenging clients. Both these packages can be found on the [**Pub**](https://pub.dev/) website. The package versions will need to be updated in the "pubspec.yaml" file from time to time.

2. Follow the steps in the "flutter_tex" documentation to update the "AndroidManifest.xml" file (for Mobile and Tablet) and the "index.html" file (for a web app).

3. Add the following folder to the Assets section in the "pubspec.yaml" file:
 ```
 assets:
    - images/
 ```

4. In the "AndroidManifest.xml" file, update the name of the app under the following section
 ```
 <application
	android:label="Auto Math Handbook Equations">
 </application>
 ```

5. Add a custom icon for the app as follows:
 * Right-click on the "res" folder found in the ```..\android\app\src\main``` folder of the app
 * Select the option "Add image asset" and follow the on-screen instructions to add the icon.

6. Update the SDK constraints under the Project Structure settings for the App

## Code
#### The project's "lib" folder is organized as follows:

* [main.dart](Documentation/main.md) 
* [commoncode.dart](Documentation/commoncode.md) 
* Models
 * [models.dart](Documentation/models/models.md)
 * [responsiveui.dart](Documentation/models/responsiveui.md)
* AutomotiveEquationsLibrary 
 * [EquationsLibrary.dart](Documentation/EquationsLibrary/EquationsLibrary.md)
 * [Equations](Documentation/EquationsLibrary/equations.md)

## Assets
#### The images are saved in an "images" folder in the project's root folder.
#### The [appbarimage.jpg](Documentation/images/appbarimage.jpg) is used as the background image for the app bar.
#### The [logo.png](Documentation/images/logo.png) is used for the app's logo.

## Screenshots
#### [AutoMathHandbookEquationsScreenshots01](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots01.png)
#### [AutoMathHandbookEquationsScreenshots02](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots02.png)
#### [AutoMathHandbookEquationsScreenshots03](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots03.png)
#### [AutoMathHandbookEquationsScreenshots04](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots04.png)
#### [AutoMathHandbookEquationsScreenshots05](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots05.png)
#### [AutoMathHandbookEquationsScreenshots06](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots06.png)
#### [AutoMathHandbookEquationsScreenshots07](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots07.png)
#### [AutoMathHandbookEquationsScreenshots08](Documentation/Screenshots/AutoMathHandbookEquationsScreenshots08.png)

## Notes
#### When using the words "web app" or "PC", they are used with reference to a web app built and run on the localhost on a PC. The Chrome browser was used while working with the "web app". A standalone Desktop version of this has not yet been built for the PC (Windows) in this case.

## Future Work
#### 1) Implement Dark Theme  
#### 2) Keep a check on flutter_tex package for web app bug resolution
