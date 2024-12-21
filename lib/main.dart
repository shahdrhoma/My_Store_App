import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:store_app/screens/home_page_screen.dart';
import 'package:store_app/screens/update_product_screen.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomePageScreen.id: (context) => const HomePageScreen(),
        UpdateProductScreen.id: (context) => UpdateProductScreen()
      },
      initialRoute: HomePageScreen.id,
    );
  }
}
