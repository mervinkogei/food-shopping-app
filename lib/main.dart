import 'package:flutter/material.dart';
import 'package:food_shopping_app/Screens/checkout.dart';
import 'package:food_shopping_app/Screens/confirm_payment.dart';
import 'package:food_shopping_app/Screens/home.dart';
import 'package:food_shopping_app/Screens/my_cart.dart';
import 'package:food_shopping_app/Screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/':(context) => const Splashscreen(),
        '/home':(context) => const HomeScreen(),
        '/cart':(context) => const MyCartScreen(),
        '/checkout':(context) => const CheckoutScreen(),
        '/history':(context) => const MyCartScreen(),
        '/payment':(context) => const ConfirmPayment(),
      },
    );
  }
}

