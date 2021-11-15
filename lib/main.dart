import 'package:flutter/material.dart';
import 'ui/screens/login_result_screen.dart';
import 'app/helpers/extension-methods/color_extension.dart';
import 'ui/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        primarySwatch: HexStringToColorExtension.hexStringToColor('#1E1F28')
            .convertToMaterialColor(),
        colorScheme: ColorScheme.light(
          primary: HexStringToColorExtension.hexStringToColor('#1E1F28')
              .convertToMaterialColor(),
          secondary: const Color.fromRGBO(239, 54, 81, 1),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        LoginScreen.route: (_) => const LoginScreen(),
        LoginResultScreen.route: (_) => const LoginResultScreen(),
      },
      initialRoute: LoginScreen.route,
    );
  }
}
