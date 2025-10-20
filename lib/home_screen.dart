import 'package:flutter/material.dart';
import 'package:flutter_widgets_test_case/main.dart';
import 'package:flutter_widgets_test_case/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Center(child: Text("Home")),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed:(){
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(builder: (context)=>SecondScreen()));
                  Navigator.pushNamed(
                      context, '/second',
                      arguments:ScreenArguments("Hello Darus"));
                  // Navigator.pushReplacementNamed(
                  //     context,'/second',
                  //     arguments:ScreenArguments("Hello Darus"));
                },
                child: Text("Go to Second Screen"))
          ],
        ),
      ),
    );
  }
}
