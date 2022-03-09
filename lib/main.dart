import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup_ui_demo_flutter/constants/constants.dart';
import 'package:login_signup_ui_demo_flutter/ui/signup.dart';
import 'package:login_signup_ui_demo_flutter/ui/signin.dart';
import 'package:login_signup_ui_demo_flutter/ui/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Login',
          theme: ThemeData(
            primaryColor: Colors.orange[200]
          ),
          routes: <String, WidgetBuilder> {
            SPLASH_SCREEN: (BuildContext context) => SplashScreen(),
            SIGN_IN: (BuildContext (context) => SignInPage(),
            SIGN_UP: (BuildContext (context) => SignUpScreen(),
          },
          initialRoute: SPLASH_SCREEN,
        );
  }
}
