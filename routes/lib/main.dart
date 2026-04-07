import 'package:flutter/material.dart';
import 'package:routes/home_screen.dart';
import 'package:routes/screen_three.dart';
import 'package:routes/screen_two.dart';

void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.blue,

      ),
    initialRoute: HomeScreen.id,
     routes: {
      HomeScreen.id: (context) => const HomeScreen(),
        ScreenTwo.id: (context) =>  ScreenTwo(name: ' ', num: 2),
          ScreenThree.id: (context) =>  ScreenThree(name: '', num: 3),
     },
    );
  }
}