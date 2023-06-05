import 'package:ecomm_app2/routes/index.dart';
import 'package:ecomm_app2/screens/auth_screens/splash_screen/splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: const Splashscreen(),
        getPages: appRoute.getPages,
        debugShowCheckedModeBanner: false);
  }
}
