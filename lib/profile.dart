import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 150,),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 50,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index){
                      return Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width/5-20,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle
                        ),
                      );
                    },
                    separatorBuilder: (context,index){
                     return SizedBox(width: 15,);
                    },
                    itemCount: 5),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                spacing: 15,
                children: [
                  Container(
                    height: 60 ,
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    decoration:
                        BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  ),
                  Container(
                    height: 60,
                    width: MediaQuery.of(context).size.width / 5 - 20,
                    decoration:
                    BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SizedBox(
                height: 150,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 6,
                    children: [
                      Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width/3-20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                      ),Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width/3-20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                      ),Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width/3-20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                      ),Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width/3-20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                      ),Container(
                        height: 140,
                        width: MediaQuery.of(context).size.width/3-20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),

    );
  }
}
