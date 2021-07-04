import 'package:flutter/material.dart';
import 'package:project_dicoding/widgets/my_bottom_nav_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meditation App',
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: Colors.blue.shade300,
        textTheme: Theme.of(context)
            .textTheme
            .apply(displayColor: Colors.blue.shade100),
      ),
      home: MyBottomNavBar(),
    );
  }
}
