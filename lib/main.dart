import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'core/app_export.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation, DeviceType deviceType) => MaterialApp(
        theme: theme,
        title: 'genteel',
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.onboardingScreen,
        routes: AppRoutes.routes,
      ),
    );
  }
}
