import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool lightMode =
        MediaQuery.of(context).platformBrightness== Brightness.light;
    return Scaffold(
      backgroundColor:
      lightMode ? Color(0xFF9E9EE) : const Color(0xFF212121),
      body: Center(
        child: lightMode
        ?Image.asset('assets/splash_screen.jpg')
            :Image.asset('assets/splash_screen_dark.jpg')),
    );
  }
}
class Init{
  Init._();
  static final instance = Init._();
  Future initialize()async{
    await Future.delayed(const Duration(seconds: 2));
  }
}
