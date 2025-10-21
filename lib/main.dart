import 'package:flutter/material.dart';
import 'package:flutter_widgets_test_case/pages/About.dart';
import 'package:flutter_widgets_test_case/pages/help_page.dart';
import 'package:flutter_widgets_test_case/pages/home_page.dart';
import 'package:flutter_widgets_test_case/pages/notification_page.dart';
import 'package:flutter_widgets_test_case/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TabTabScreen(),
    );
  }
}

class TabTabScreen extends StatelessWidget{
  const TabTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 4,
       child: Scaffold(
         appBar: AppBar(
           title: Center(child: Text("Top Tab Bar with 4 pages")),
           bottom: TabBar(
             isScrollable: true,
               tabs: [
                 Tab(text: 'Home',),
                 Tab(text: 'Profile',),
                 Tab(text: 'Notify',),
                 Tab(text: 'Help',),
                 Tab(text: 'About',),
               ]
           ),
         ),
         body: TabBarView(
             children: [
               HomePage(),
               ProfilePage(),
               NotificationPage(),
               HelpPage(),
               AboutPage(),
             ]
         ),

       ));
  }

}

