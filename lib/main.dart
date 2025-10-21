import 'package:flutter/material.dart';
import 'package:flutter_widgets_test_case/top_tap_bar_pages/About.dart';
import 'package:flutter_widgets_test_case/top_tap_bar_pages/help_page.dart';
import 'package:flutter_widgets_test_case/top_tap_bar_pages/home_page.dart';
import 'package:flutter_widgets_test_case/top_tap_bar_pages/notification_page.dart';
import 'package:flutter_widgets_test_case/top_tap_bar_pages/profile_page.dart';

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
      // home: TabTabScreen(),
      // home: BottomNavScreen(),
      home: appBarScreenIcon(),
    );
  }
}


class BottomNavScreen extends StatefulWidget{
  BottomNavScreenState createState()=> BottomNavScreenState();
}

class BottomNavScreenState extends State<BottomNavScreen>{
  int SelectedPage=0;
  final List pages=[
    HomePage(),
    ProfilePage(),
    NotificationPage(),
    HelpPage(),
    AboutPage(),
  ];
  void onItemTapped(int index){
    setState(() {
      SelectedPage=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigation"),),
      body: pages[SelectedPage],
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: SelectedPage,
        onTap: onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.help),label: "Help"),
          BottomNavigationBarItem(icon: Icon(Icons.info_rounded),label: "About"),
        ],
      ),
    );
  }
}


class appBarScreenIcon extends StatefulWidget{
  const appBarScreenIcon({super.key});

  @override
  appBarScreen createState()=>appBarScreen();

}

class appBarScreen extends State<appBarScreenIcon>{
  int SelectedPage = 0;
  final List pages =[
    HomePage(),
    NotificationPage(),
    ProfilePage(),
    HelpPage(),
    AboutPage(),
  ];

  onIconTap(int index){
    setState(() {
      SelectedPage =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(onPressed: ()=>onIconTap(0), icon: Icon(Icons.home)),
          IconButton(onPressed: ()=>onIconTap(1), icon: Icon(Icons.person)),
          IconButton(onPressed: ()=>onIconTap(2), icon: Icon(Icons.notifications)),
          IconButton(onPressed: ()=>onIconTap(3), icon: Icon(Icons.help)),
          IconButton(onPressed: ()=>onIconTap(3), icon: Icon(Icons.info_outline)),
        ],
      ),
      body: pages[SelectedPage],
    );
  }

}



class TabTabScreen extends StatelessWidget{
  const TabTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
       length: 5,
       child: Scaffold(
         appBar: AppBar(
           title: Center(child: Text("Top Tab Bar with 5 top_tap_bar_pages")),
           bottom: TabBar(
             // isScrollable: true,
             // tabAlignment: TabAlignment.start,
             isScrollable: false,
               tabAlignment: TabAlignment.fill,
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

