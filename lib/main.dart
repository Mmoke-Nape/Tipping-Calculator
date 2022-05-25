import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:tipping_calculator/ads/ad_state.dart';
import 'package:tipping_calculator/constants/constants.dart';
import 'package:tipping_calculator/screens/home/home_screen.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final initFuture = MobileAds.instance.initialize();
  final adState = AdState(initFuture);
  runApp(
      Provider.value(value: adState, builder: (context, child) => (MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyText1: TextStyle(fontFamily: 'SourceSansPro'),

          // headline6: TextStyle(fontFamily: 'Caveat'),
          headline6: TextStyle(fontFamily: 'Lobster'),
          // headline6: TextStyle(fontFamily: 'MarckScript'),
          // headline6: TextStyle(fontFamily: 'ShadowsIntoLight'),
          // headline6: TextStyle(fontFamily: 'ShadowsIntoLight'),
        ).apply(bodyColor: greyText),
      ),
      home: const HomeScreen(),
    );
  }
}
