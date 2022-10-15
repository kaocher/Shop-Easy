import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_easy/demo.dart';
import 'package:shop_easy/screen/cart_screen.dart';
import 'package:shop_easy/screen/home_product_gridview_screen.dart';
import 'package:shop_easy/screen/home_screen.dart';
import 'package:shop_easy/screen/product_details_screen.dart';
import 'package:shop_easy/screen/product_gridView_screen.dart';
import 'package:shop_easy/screen/subcategory_product.dart';
import 'firebase_options.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFCEDDEE),
      ),
      home: Demo(),
    );
  }
}

