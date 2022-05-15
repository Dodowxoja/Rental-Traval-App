import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:rental_travel_app/routes/my_routes.dart';
import 'package:rental_travel_app/views/splash/view/splash_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      child: MyApp(),
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('uz', 'UZ'),
      ],
      saveLocale: true,
      path: "assets/lang",
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  MyRoute myRoute = MyRoute();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Rental Travel App',
      theme: ThemeData(primarySwatch: Colors.blue),
      // home: const TestPage(),
      home: const SplashPage(),
      onGenerateRoute: myRoute.onGenerate,
      initialRoute: "/splash",
    );
  }
}

// easy_localization: ^3.0.0
// bloc
