import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_get_app/initial_bindings.dart';
import 'package:test_get_app/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitialBindings(),
      title: 'Flutter Demo',
      getPages: [
        GetPage(
            page: () => const WelcomePage(), name: '/',
        ),
      ],
      //you can use initialRoute instead of home
      // initialRoute: '/',
      home: const Scaffold(

        body: SafeArea(child: WelcomePage()),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
